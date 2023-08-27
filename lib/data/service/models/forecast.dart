import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  @JsonSerializable()
  factory Forecast({
    required Location location,
    required Current current,
    required ForecastData forecast,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
class Location with _$Location {
  @JsonSerializable()
  factory Location({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String tzId,
    required int localtimeEpoch,
    required DateTime localtime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  @JsonSerializable()
  factory Current({
    required int lastUpdatedEpoch,
    required DateTime lastUpdated,
    required double tempC,
    required double tempF,
    required int isDay,
    required Condition condition,
    required double windMph,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double pressureIn,
    required double precipMm,
    required double precipIn,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double feelslikeF,
    required double visKm,
    required double visMiles,
    required double uv,
    required double gustMph,
    required double gustKph,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  const Condition._();
  @JsonSerializable()
  factory Condition({
    required String text,
    required String icon,
    required int code,
  }) = _Condition;

  get image => "https:$icon";

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}

@freezed
class ForecastData with _$ForecastData {
  @JsonSerializable()
  factory ForecastData({
    required List<ForecastDay> forecastday,
  }) = _ForecastData;

  factory ForecastData.fromJson(Map<String, dynamic> json) =>
      _$ForecastDataFromJson(json);
}

@freezed
class ForecastDay with _$ForecastDay {
  @JsonSerializable()
  factory ForecastDay({
    required String date,
    required int dateEpoch,
    required Day day,
    required Astro astro,
    required List<Hour> hour,
  }) = _ForecastDay;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}

@freezed
class Day with _$Day {
  @JsonSerializable()
  factory Day({
    required double maxtempC,
    required double maxtempF,
    required double mintempC,
    required double mintempF,
    required double avgtempC,
    required double avgtempF,
    required double maxwindMph,
    required double maxwindKph,
    required double totalprecipMm,
    required double totalprecipIn,
    required double totalsnowCm,
    required double avgvisKm,
    required double avgvisMiles,
    required int avghumidity,
    required int dailyWillItRain,
    required int dailyChanceOfRain,
    required int dailyWillItSnow,
    required int dailyChanceOfSnow,
    required Condition condition,
    required double uv,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Astro with _$Astro {
  @JsonSerializable()
  factory Astro({
    required String sunrise,
    required String sunset,
    required String moonrise,
    required String moonset,
    required String moonPhase,
    required String moonIllumination,
    required int isMoonUp,
    required int isSunUp,
  }) = _Astro;

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
}

@freezed
class Hour with _$Hour {
  @JsonSerializable()
  factory Hour({
    required int timeEpoch,
    required DateTime time,
    required double tempC,
    required double tempF,
    required int isDay,
    required Condition condition,
    required double windMph,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double pressureIn,
    required double precipMm,
    required double precipIn,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double feelslikeF,
    required double windchillC,
    required double windchillF,
    required double heatindexC,
    required double heatindexF,
    required double dewpointC,
    required double dewpointF,
    required int willItRain,
    required int chanceOfRain,
    required int willItSnow,
    required int chanceOfSnow,
    required double visKm,
    required double visMiles,
    required double gustMph,
    required double gustKph,
    required double uv,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}
