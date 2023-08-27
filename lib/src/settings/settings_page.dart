import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/src/settings/settings_provider.dart';
import 'package:weather_app/theme.dart';

/// Using record as typedef is better than using class
/// because there is no need for methods or constructor
typedef Language = ({Locale? locale, String name});

@RoutePage()
class SettingsPage extends StatefulHookConsumerWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final AppSettings settings = ref.watch(settingsPreferenceProvider);
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final List<Language> languages = [
      (
        locale: null,
        name: l10n.systemLanguage,
      ),
      (
        locale: const Locale('en'),
        name: 'English',
      ),
      (
        locale: const Locale('ar'),
        name: 'العربية',
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Insets.medium),
        children: [
          Text(
            l10n.unitSystem,
            style: theme.textTheme.titleLarge,
          ),
          Row(
            children: [
              for (final system in UnitSystem.values)
                Expanded(
                  child: RadioListTile<UnitSystem>(
                    value: system,
                    title: Text(
                      system.localize(l10n),
                      style: theme.textTheme.bodyLarge,
                    ),
                    groupValue: settings.unitSystem,
                    onChanged: (value) {
                      ref.read(settingsPreferenceProvider.notifier).updateValue(
                            settings.copyWith(unitSystem: value!),
                          );
                    },
                  ),
                ),
            ],
          ),
          Text(
            l10n.language,
            style: theme.textTheme.titleLarge,
          ),
          // it's better to be Dialog but for simplicity we use RadioListTile
          for (final language in languages)
            RadioListTile<Locale?>(
              value: language.locale,
              title: Text(
                language.name,
                style: theme.textTheme.bodyLarge,
              ),
              groupValue: settings.locale,
              onChanged: (value) {
                ref
                    .read(settingsPreferenceProvider.notifier)
                    .updateValue(settings.copyWith(locale: value));
              },
            ),
        ],
      ),
    );
  }
}
