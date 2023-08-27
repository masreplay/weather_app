import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/service/clients/forecast_client.dart';
import 'package:weather_app/data/service/models/forecast.dart';

part 'forecast_repository.g.dart';

/// dependency injection for the repository [ForecastRepository]
@riverpod
ForecastRepository forecastRepository(ForecastRepositoryRef ref) =>
    ForecastRepository(ref.read(forecastClientProvider));

class ForecastRepository implements ForecastClient {
  const ForecastRepository(this._client);

  final ForecastClient _client;

  @override
  Future<Forecast> getCurrentForecast(ForecastQueries queries) =>
      _client.getCurrentForecast(queries);
}
