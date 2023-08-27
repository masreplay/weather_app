import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/repositories/forecast_repository.dart';
import 'package:weather_app/data/service/clients/forecast_client.dart';
import 'package:weather_app/data/service/models/forecast.dart';
import 'package:weather_app/src/main/search/saved_place_provider.dart';

part 'forecast_provider.g.dart';

const String defaultPlace = "Baghdad";

@riverpod
Future<Forecast> forecastProvider(ForecastProviderRef ref) async {
  final savedPlace = ref.watch(savedPlacePreferenceProvider);

  return ref
      .read(forecastRepositoryProvider)
      .getCurrentForecast(ForecastQueries(q: savedPlace?.name ?? defaultPlace));
}
