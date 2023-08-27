import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/json_converters/date_time_json_converter.dart';
import 'package:weather_app/data/service/json_converters/time_of_day_json_converter.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/date_time.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

const jsonSerializable = JsonSerializable(
  fieldRename: FieldRename.snake,
  converters: [
    DateTimeJsonConverter(),
  ],
);

@freezed
class Forecast with _$Forecast {
  const Forecast._();
  @jsonSerializable
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
  const Location._();
  @jsonSerializable
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

  String get localTimeFormatted =>
      "${localtime.format()} ${localtime.formatDOW()}";

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  const Current._();

  @jsonSerializable
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

  double getWindSpeed(UnitType unit) =>
      unit == UnitType.metric ? windKph : windMph;

  double getTemperature(UnitType unit) =>
      unit == UnitType.metric ? tempC : tempF;

  double getFeelsLike(UnitType unit) =>
      unit == UnitType.metric ? feelslikeC : feelslikeF;

  double getPressure(UnitType unit) =>
      unit == UnitType.metric ? pressureMb : pressureIn;

  double getPrecipitation(UnitType unit) =>
      unit == UnitType.metric ? precipMm : precipIn;

  double getVisibility(UnitType unit) =>
      unit == UnitType.metric ? visKm : visMiles;

  double getGust(UnitType unit) => unit == UnitType.metric ? gustKph : gustMph;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  const Condition._();

  @jsonSerializable
  factory Condition({
    required String text,
    required String icon,
    required int code,
  }) = _Condition;

  String image() => "https:${icon.replaceAll("64", "128")}";

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}

@freezed
class ForecastData with _$ForecastData {
  const ForecastData._();
  @jsonSerializable
  factory ForecastData({
    required List<ForecastDay> forecastday,
  }) = _ForecastData;

  factory ForecastData.fromJson(Map<String, dynamic> json) =>
      _$ForecastDataFromJson(json);
}

@freezed
class ForecastDay with _$ForecastDay {
  const ForecastDay._();
  @jsonSerializable
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
  const Day._();
  @jsonSerializable
  factory Day({
    required num maxtempC,
    required num maxtempF,
    required num mintempC,
    required num mintempF,
    required num avgtempC,
    required num avgtempF,
    required num maxwindMph,
    required num maxwindKph,
    required num totalprecipMm,
    required num totalprecipIn,
    required num totalsnowCm,
    required num avgvisKm,
    required num avgvisMiles,
    required num avghumidity,
    required num dailyWillItRain,
    required num dailyChanceOfRain,
    required num dailyWillItSnow,
    required num dailyChanceOfSnow,
    required Condition condition,
    required num uv,
  }) = _Day;

  num maxTemperature(UnitType unit) =>
      unit == UnitType.metric ? maxtempC : maxtempF;

  num minTemperature(UnitType unit) =>
      unit == UnitType.metric ? mintempC : mintempF;

  num avgTemperature(UnitType unit) =>
      unit == UnitType.metric ? avgtempC : avgtempF;

  num maxWind(UnitType unit) =>
      unit == UnitType.metric ? maxwindKph : maxwindMph;

  num totalPrecipitation(UnitType unit) =>
      unit == UnitType.metric ? totalprecipMm : totalprecipIn;

  num totalSnow(UnitType unit) =>
      unit == UnitType.metric ? totalsnowCm : totalsnowCm;

  num avgVisibility(UnitType unit) =>
      unit == UnitType.metric ? avgvisKm : avgvisMiles;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Astro with _$Astro {
  const Astro._();
  @JsonSerializable(
      fieldRename: FieldRename.snake,
      explicitToJson: true,
      converters: [TimeOfDayJsonConverter()])
  factory Astro({
    required TimeOfDay sunrise,
    required TimeOfDay sunset,
    required TimeOfDay moonrise,
    required TimeOfDay moonset,
    required String moonPhase,
    required String moonIllumination,
    required int isMoonUp,
    required int isSunUp,
  }) = _Astro;

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
}

@freezed
class Hour with _$Hour {
  const Hour._();
  @jsonSerializable
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

  double getTemperature(UnitType unit) =>
      unit == UnitType.metric ? tempC : tempF;

  double getFeelsLike(UnitType unit) =>
      unit == UnitType.metric ? feelslikeC : feelslikeF;

  double getWindSpeed(UnitType unit) =>
      unit == UnitType.metric ? windKph : windMph;

  double getWindChill(UnitType unit) =>
      unit == UnitType.metric ? windchillC : windchillF;

  double getHeatIndex(UnitType unit) =>
      unit == UnitType.metric ? heatindexC : heatindexF;

  double getDewPoint(UnitType unit) =>
      unit == UnitType.metric ? dewpointC : dewpointF;

  double getVisibility(UnitType unit) =>
      unit == UnitType.metric ? visKm : visMiles;

  double getGust(UnitType unit) => unit == UnitType.metric ? gustKph : gustMph;

  double getPressure(UnitType unit) =>
      unit == UnitType.metric ? pressureMb : pressureIn;

  double getPrecipitation(UnitType unit) =>
      unit == UnitType.metric ? precipMm : precipIn;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}
