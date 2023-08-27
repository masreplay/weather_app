import 'package:cached_network_image/cached_network_image.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/forecast.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/date_time.dart';
import 'package:weather_app/l10n/localization.dart';
import 'package:weather_app/src/main/today_weather/today_weather_provider.dart';
import 'package:weather_app/src/settings/settings_provider.dart';
import 'package:weather_app/src/widgets/data_list_tile.dart';
import 'package:weather_app/src/widgets/default_error_widget.dart';
import 'package:weather_app/src/widgets/default_loading_widget.dart';
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

    const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 2,
      crossAxisSpacing: gutter,
      mainAxisSpacing: gutter,
    );

    return state.when(
      data: (data) {
        final forecast = data.forecast.forecastday.first;

        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: gutter,
            vertical: Insets.small,
          ),
          children: [
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: gridDelegate,
              children: [
                ItemListTile(
                  title: Text(l10n.windSpeed),
                  icon: Icons.air_outlined,
                  subtitle: Text(
                    l10n.speed(unitType, data.current.getWindSpeed),
                  ),
                ),
                ItemListTile(
                  title: Text(l10n.uvIndex),
                  icon: Icons.wb_sunny_outlined,
                  subtitle: Text("${data.current.uv}"),
                ),
                ItemListTile(
                  title: Text(l10n.gust),
                  icon: Icons.wind_power_outlined,
                  subtitle: Text(
                    l10n.speed(unitType, data.current.getGust),
                  ),
                ),
                ItemListTile(
                  title: Text(l10n.visibility),
                  icon: Icons.visibility_outlined,
                  subtitle: Text(
                    l10n.speed(unitType, data.current.getVisibility),
                  ),
                ),
              ],
            ),
            const Gap(16),
            HourlyForecastListTile(
              hours: forecast.hour,
              unitType: unitType,
            ),
            const Gap(16),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: gridDelegate,
              children: [
                ItemListTile(
                  title: Text(l10n.sunrise),
                  icon: Icons.nights_stay_outlined,
                  subtitle: Text(
                    forecast.astro.sunrise.toDateTime().formatHour(),
                  ),
                ),
                ItemListTile(
                  title: Text(l10n.sunset),
                  icon: Icons.wb_sunny_outlined,
                  subtitle: Text(
                    forecast.astro.sunset.toDateTime().formatHour(),
                  ),
                ),
              ],
            ),
          ],
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

class HourlyForecastListTile extends StatelessWidget {
  const HourlyForecastListTile({
    super.key,
    required this.hours,
    required this.unitType,
  });

  final List<Hour> hours;
  final UnitType unitType;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return DataListTile(
      title: Text(l10n.hourlyForecast),
      icon: Icons.watch_later_outlined,
      child: SizedBox(
        height: 110,
        child: ListView.separated(
          itemCount: hours.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const Gap(16),
          itemBuilder: (context, index) {
            final item = hours[index];
            return Column(
              children: [
                Text(
                  item.time.formatHour(),
                  style: theme.textTheme.bodyMedium,
                ),
                CachedNetworkImage(
                  imageUrl: item.condition.image(),
                  width: 64,
                  height: 64,
                ),
                Text(
                  l10n.temperature(
                    unitType,
                    item.getTemperature,
                  ),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
