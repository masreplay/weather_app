import 'package:weather_app/common_lib.dart';
import 'package:weather_app/src/main/forecast_provider.dart';
import 'package:weather_app/src/main/today_weather/today_weather_page.dart';
import 'package:weather_app/src/widgets/default_error_widget.dart';
import 'package:weather_app/src/widgets/default_loading_widget.dart';

@RoutePage()
class TomorrowWeatherPage extends HookConsumerWidget {
  const TomorrowWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = forecastProviderProvider;
    final state = ref.watch(provider);

    return state.when(
      data: (data) => ForecastBody(data.forecast.forecastday[1]),
      error: (error, stackTrace) => DefaultErrorWidget(
        error: error,
        stackTrace: stackTrace,
        refresh: () => ref.refresh(provider),
      ),
      loading: DefaultLoadingWidget.new,
    );
  }
}
