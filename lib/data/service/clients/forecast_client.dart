import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/service/dio.dart';
import 'package:weather_app/data/service/models/forecast.dart';

import '_clients.dart';

part 'forecast_client.freezed.dart';
part 'forecast_client.g.dart';

@riverpod
ForecastClient forecastClient(ForecastClientRef ref) =>
    ForecastClient(ref.read(dioProvider));

@RestApi(baseUrl: "http://api.weatherapi.com/v1")
abstract class ForecastClient {
  factory ForecastClient(Dio dio, {String baseUrl}) = _ForecastClient;

  /// Also you can do it like this:
  /// @Query('q') String? q,
  @GET("/forecast.json")
  Future<Forecast> getCurrentForecast(
    @Queries() ForecastQueries queries,
  );
}

@freezed
class ForecastQueries with _$ForecastQueries {
  @JsonSerializable(explicitToJson: true)
  factory ForecastQueries({
    // London
    String? q,
    @Default(5) int days,
  }) = _ForecastQueries;

  factory ForecastQueries.fromJson(Map<String, dynamic> json) =>
      _$ForecastQueriesFromJson(json);
}
