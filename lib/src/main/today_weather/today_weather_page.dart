import 'package:cached_network_image/cached_network_image.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/forecast.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/date_time.dart';
import 'package:weather_app/l10n/localization.dart';
import 'package:weather_app/src/main/forecast_provider.dart';
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
    final provider = forecastProviderProvider;
    final state = ref.watch(provider);

    return state.when(
      data: (data) => ForecastBody(data.forecast.forecastday.first),
      error: (error, stackTrace) => DefaultErrorWidget(
        error: error,
        stackTrace: stackTrace,
        refresh: () => ref.refresh(provider),
      ),
      loading: DefaultLoadingWidget.new,
    );
  }
}

class ForecastBody extends HookConsumerWidget {
  const ForecastBody(
    this.forecast, {
    super.key,
  });

  final ForecastDay forecast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    final settings = ref.watch(settingsPreferenceProvider);
    final unitSystem = settings.unitSystem;

    const gutter = Insets.medium;

    const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 2,
      crossAxisSpacing: gutter,
      mainAxisSpacing: gutter,
    );
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
              titleText: l10n.windSpeed,
              icon: Icons.air_outlined,
              subtitleText: l10n.speed(unitSystem, forecast.day.maxWind),
            ),
            ItemListTile(
                titleText: l10n.uvIndex,
                icon: Icons.wb_sunny_outlined,
                subtitleText: "${forecast.day.uv}"),
            ItemListTile(
              titleText: l10n.snow,
              icon: Icons.wind_power_outlined,
              subtitleText: l10n.speed(unitSystem, forecast.day.totalSnow),
            ),
            ItemListTile(
              titleText: l10n.visibility,
              icon: Icons.visibility_outlined,
              subtitleText: l10n.speed(unitSystem, forecast.day.avgVisibility),
            ),
          ],
        ),
        const Gap(16),
        HourlyForecastListTile(
          hours: forecast.hour,
          unitSystem: unitSystem,
        ),
        const Gap(16),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: gridDelegate,
          children: [
            ItemListTile(
              titleText: l10n.sunrise,
              icon: Icons.nights_stay_outlined,
              subtitleText: forecast.astro.sunrise.toDateTime().formatHour(),
            ),
            ItemListTile(
              titleText: l10n.sunset,
              icon: Icons.wb_sunny_outlined,
              subtitleText: forecast.astro.sunset.toDateTime().formatHour(),
            ),
          ],
        ),
      ],
    );
  }
}

class HourlyForecastListTile extends StatelessWidget {
  const HourlyForecastListTile({
    super.key,
    required this.hours,
    required this.unitSystem,
  });

  final List<Hour> hours;
  final UnitSystem unitSystem;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return DataListTile(
      titleText: l10n.hourlyForecast,
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
                  imageUrl: item.condition.getImage(),
                  width: 64,
                  height: 64,
                ),
                Text(
                  l10n.temperature(
                    unitSystem,
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
