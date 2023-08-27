import 'package:weather_app/common_lib.dart';
import 'package:weather_app/src/main/flex_padded.dart';
import 'package:weather_app/src/main/today_weather/default_error_widget.dart';
import 'package:weather_app/src/main/today_weather/default_loading_widget.dart';
import 'package:weather_app/src/main/today_weather/localization.dart';
import 'package:weather_app/src/main/today_weather/today_weather_provider.dart';
import 'package:weather_app/src/settings/settings_provider.dart';
import 'package:weather_app/theme.dart';

@RoutePage()
class TodayWeatherPage extends StatefulHookConsumerWidget {
  const TodayWeatherPage({super.key});

  @override
  ConsumerState<TodayWeatherPage> createState() => _TodayWeatherPageState();
}

class _TodayWeatherPageState extends ConsumerState<TodayWeatherPage> {
  @override
  Widget build(BuildContext context) {
    final provider = getTodayForecastProvider;
    final state = ref.watch(provider);
    final l10n = AppLocalizations.of(context)!;

    final settings = ref.watch(settingsPreferenceProvider);
    final unitType = settings.unitType;

    const gutter = Insets.medium;

    return state.when(
      data: (data) {
        if (data == null) return Container();

        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: gutter,
            vertical: Insets.small,
          ),
          child: ColumnPadded(
            gap: gutter,
            children: [
              RowPadded(
                gap: gutter,
                children: [
                  Expanded(
                    child: DataListTile(
                      title: Text(l10n.windSpeed),
                      subtitle: Text(
                        l10n.speed(unitType, data.current.getWindSpeed),
                      ),
                      icon: Icons.air_outlined,
                    ),
                  ),
                  Expanded(
                    child: DataListTile(
                      title: Text(l10n.uvIndex),
                      subtitle: Text(
                        "${data.current.uv}",
                      ),
                      icon: Icons.wb_sunny_outlined,
                    ),
                  ),
                ],
              ),
              RowPadded(
                gap: gutter,
                children: [
                  Expanded(
                    child: DataListTile(
                      title: Text(l10n.gust),
                      subtitle: Text(
                        l10n.speed(unitType, data.current.getGust),
                      ),
                      icon: Icons.wind_power_outlined,
                    ),
                  ),
                  Expanded(
                    child: DataListTile(
                      title: Text(l10n.visibility),
                      subtitle: Text(
                        l10n.speed(unitType, data.current.getVisibility),
                      ),
                      icon: Icons.visibility_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) => DefaultErrorWidget(
        error: error,
        stackTrace: stackTrace,
        refresh: () => ref.refresh(provider),
      ),
      loading: DefaultLoadingWidget.new,
    );
  }
}

class DataListTile extends StatelessWidget {
  const DataListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final Widget title;
  final Widget subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.secondaryContainer;
    final foregroundColor = theme.colorScheme.onSecondaryContainer;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: RowPadded(
        gap: 8,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.primary,
            ),
            child: Icon(icon, color: theme.colorScheme.onPrimary),
          ),
          ColumnPadded(
            gap: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                style: theme.textTheme.titleMedium!.copyWith(
                  color: foregroundColor,
                ),
                child: title,
              ),
              DefaultTextStyle(
                style: theme.textTheme.titleSmall!.copyWith(
                  color: foregroundColor,
                ),
                child: subtitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
