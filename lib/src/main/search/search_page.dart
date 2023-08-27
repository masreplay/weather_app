import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/repositories/search_repository.dart';
import 'package:weather_app/data/service/service.dart';
import 'package:weather_app/src/settings/settings_provider.dart';

part 'search_page.g.dart';

@riverpod
Future<List<Place>> search(SearchRef ref, SearchQueries queries) {
  return ref.read(searchRepositoryProvider).search(queries);
}

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class SearchAppBar extends ConsumerWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    return SearchAnchor(builder: (context, controller) {
      return SearchBar(
        elevation: const MaterialStatePropertyAll(0),
        controller: controller,
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16.0),
        ),
        onTap: () => controller.openView(),
        onChanged: (_) => controller.openView(),
        leading: const Icon(Icons.search),
        trailing: <Widget>[
          HookConsumer(
            builder: (context, ref, child) {
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
            },
          )
        ],
      );
    }, suggestionsBuilder: (context, controller) {
      return List<ListTile>.generate(5, (int index) {
        final String item = 'item $index';
        return ListTile(
          title: Text(item),
          onTap: () {},
        );
      });
    });
  }
}
