import 'package:cached_network_image/cached_network_image.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/l10n/localization.dart';
import 'package:weather_app/src/main/forecast_provider.dart';
import 'package:weather_app/src/settings/settings_provider.dart';
import 'package:weather_app/src/widgets/default_error_widget.dart';
import 'package:weather_app/src/widgets/default_loading_widget.dart';
import 'package:weather_app/theme.dart';

@RoutePage()
class ForecastWeatherPage extends HookConsumerWidget {
  const ForecastWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = forecastProviderProvider;
    final state = ref.watch(provider);
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(settingsPreferenceProvider);

    return state.when(
      data: (data) {
        final days = data.forecast.forecastday;

        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(Insets.medium),
          itemCount: days.length,
          itemBuilder: (context, index) {
            final forecast = days[index];
            return ListTile(
              title: Text(
                forecast.date,
                style: theme.textTheme.titleLarge,
              ),
              subtitle: Text(
                forecast.day.condition.text,
                style: theme.textTheme.titleMedium,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CachedNetworkImage(
                    imageUrl: forecast.day.condition.getImage(),
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    l10n.temperature(
                      settings.unitSystem,
                      forecast.day.avgTemperature,
                    ),
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            );
          },
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
