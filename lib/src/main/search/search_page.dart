import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/repositories/search_repository.dart';
import 'package:weather_app/data/service/service.dart';
import 'package:weather_app/src/settings/settings_provider.dart';

part 'search_page.g.dart';

/// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
@riverpod
Future<List<Place>> search(SearchRef ref, SearchQueries queries) =>
    ref.read(searchRepositoryProvider).search(queries);

/// A widget that exposes a [SearchAnchorController].
class SearchAppBar extends ConsumerWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SearchAnchor(
      builder: (context, controller) {
        return SearchBar(
          controller: controller,
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16.0),
          ),
          onTap: () => controller.openView(),
          onChanged: (_) => controller.openView(),
          leading: const Icon(Icons.search),
          trailing: const [ThemeIconButton()],
        );
      },
      suggestionsBuilder: (context, controller) async {
        // Use .future to read the state of a FutureProvider
        // and throw an error if the future is not completed.
        final state = await ref.read(
          searchProvider(SearchQueries(q: controller.text)).future,
        );

        return List.generate(state.length, (index) {
          final place = state[index];

          return ListTile(
            title: Text(place.name),
          );
        });
      },
    );
  }
}

class ThemeIconButton extends ConsumerWidget {
  const ThemeIconButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(settingsPreferenceProvider);
    final isLightTheme = settings.themeMode == ThemeMode.light;

    return IconButton(
      isSelected: isLightTheme,
      tooltip: isLightTheme ? l10n.lightMode : l10n.darkMode,
      icon: const Icon(Icons.wb_sunny_outlined),
      selectedIcon: const Icon(Icons.brightness_2_outlined),
      onPressed: () {
        ref.read(settingsPreferenceProvider.notifier).toggleThemeMode(
              MediaQuery.platformBrightnessOf(context),
            );
      },
    );
  }
}
