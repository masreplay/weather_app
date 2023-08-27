import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/repositories/forecast_repository.dart';
import 'package:weather_app/data/service/clients/forecast_client.dart';
import 'package:weather_app/data/service/models/forecast.dart';
import 'package:weather_app/logger.dart';
import 'package:weather_app/src/main/search/saved_place_provider.dart';

part 'today_weather_provider.g.dart';

@riverpod
Future<Forecast?> getTodayForecast(GetTodayForecastRef ref) async {
  final savedPlace = ref.watch(savedPlacePreferenceProvider);

  logger.log(Level.trace, savedPlace);
  if (savedPlace == null) return null;

  return ref
      .read(forecastRepositoryProvider)
      .getCurrentForecast(ForecastQueries(q: savedPlace.name));
}
