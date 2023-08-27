import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/repositories/search_repository.dart';
import 'package:weather_app/data/service/service.dart';
import 'package:weather_app/src/main/search/saved_place_provider.dart';
import 'package:weather_app/src/main/forecast_provider.dart';
import 'package:weather_app/src/settings/settings_provider.dart';

part 'search_page.g.dart';

/// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
@riverpod
Future<List<Place>> search(SearchRef ref, SearchQueries queries) =>
    ref.read(searchRepositoryProvider).search(queries);

/// A widget that exposes a [SearchAnchorController].
class SearchAppBar extends ConsumerWidget {
  const SearchAppBar({
    super.key,
    required this.foregroundColor,
  });

  final Color foregroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedPlace = ref.watch(savedPlacePreferenceProvider);
    final theme = Theme.of(context);

    return SearchAnchor(
      builder: (context, controller) {
        if (controller.text.isEmpty) {
          controller.text = savedPlace?.name ?? defaultPlace;
        }

        return TextField(
          controller: controller,
          enabled: false,
          style: theme.textTheme.titleLarge?.copyWith(color: foregroundColor),
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              color: foregroundColor,
            ),
          ),
          onTap: () => controller.openView(),
          onChanged: (_) => controller.openView(),
        );
      },
      suggestionsBuilder: (context, controller) async {
        if (controller.text.isEmpty) return [];

        // Use .future to read the state of a FutureProvider
        // and throw an error if the future is not completed.
        final state = await ref.read(
          searchProvider(SearchQueries(q: controller.text)).future,
        );

        return List.generate(state.length, (index) {
          final place = state[index];
          final isSelected = savedPlace?.id == place.id;
          return ListTile(
            title: Text(place.name),
            subtitle: Text(place.country),
            trailing:
                isSelected ? const Icon(Icons.arrow_outward_outlined) : null,
            selected: isSelected,
            onTap: () {
              ref
                  .read(savedPlacePreferenceProvider.notifier)
                  .updateValue(place);
              controller.closeView(place.name);
              FocusScope.of(context).unfocus();
            },
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
      tooltip: isLightTheme ? l10n.lightTheme : l10n.darkTheme,
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
