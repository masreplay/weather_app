// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      forecast: ForecastData.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      tzId: json['tzId'] as String,
      localtimeEpoch: json['localtimeEpoch'] as int,
      localtime: DateTime.parse(json['localtime'] as String),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tzId': instance.tzId,
      'localtimeEpoch': instance.localtimeEpoch,
      'localtime': instance.localtime.toIso8601String(),
    };

_$_Current _$$_CurrentFromJson(Map<String, dynamic> json) => _$_Current(
      lastUpdatedEpoch: json['lastUpdatedEpoch'] as int,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      tempC: (json['tempC'] as num).toDouble(),
      tempF: (json['tempF'] as num).toDouble(),
      isDay: json['isDay'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['windMph'] as num).toDouble(),
      windKph: (json['windKph'] as num).toDouble(),
      windDegree: json['windDegree'] as int,
      windDir: json['windDir'] as String,
      pressureMb: (json['pressureMb'] as num).toDouble(),
      pressureIn: (json['pressureIn'] as num).toDouble(),
      precipMm: (json['precipMm'] as num).toDouble(),
      precipIn: (json['precipIn'] as num).toDouble(),
      humidity: json['humidity'] as int,
      cloud: json['cloud'] as int,
      feelslikeC: (json['feelslikeC'] as num).toDouble(),
      feelslikeF: (json['feelslikeF'] as num).toDouble(),
      visKm: (json['visKm'] as num).toDouble(),
      visMiles: (json['visMiles'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      gustMph: (json['gustMph'] as num).toDouble(),
      gustKph: (json['gustKph'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrentToJson(_$_Current instance) =>
    <String, dynamic>{
      'lastUpdatedEpoch': instance.lastUpdatedEpoch,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'tempC': instance.tempC,
      'tempF': instance.tempF,
      'isDay': instance.isDay,
      'condition': instance.condition,
      'windMph': instance.windMph,
      'windKph': instance.windKph,
      'windDegree': instance.windDegree,
      'windDir': instance.windDir,
      'pressureMb': instance.pressureMb,
      'pressureIn': instance.pressureIn,
      'precipMm': instance.precipMm,
      'precipIn': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslikeC': instance.feelslikeC,
      'feelslikeF': instance.feelslikeF,
      'visKm': instance.visKm,
      'visMiles': instance.visMiles,
      'uv': instance.uv,
      'gustMph': instance.gustMph,
      'gustKph': instance.gustKph,
    };

_$_Condition _$$_ConditionFromJson(Map<String, dynamic> json) => _$_Condition(
      text: json['text'] as String,
      icon: json['icon'] as String,
      code: json['code'] as int,
    );

Map<String, dynamic> _$$_ConditionToJson(_$_Condition instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

_$_ForecastData _$$_ForecastDataFromJson(Map<String, dynamic> json) =>
    _$_ForecastData(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) => ForecastDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastDataToJson(_$_ForecastData instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday,
    };

_$_ForecastDay _$$_ForecastDayFromJson(Map<String, dynamic> json) =>
    _$_ForecastDay(
      date: json['date'] as String,
      dateEpoch: json['dateEpoch'] as int,
      day: Day.fromJson(json['day'] as Map<String, dynamic>),
      astro: Astro.fromJson(json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastDayToJson(_$_ForecastDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'dateEpoch': instance.dateEpoch,
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      maxtempC: (json['maxtempC'] as num).toDouble(),
      maxtempF: (json['maxtempF'] as num).toDouble(),
      mintempC: (json['mintempC'] as num).toDouble(),
      mintempF: (json['mintempF'] as num).toDouble(),
      avgtempC: (json['avgtempC'] as num).toDouble(),
      avgtempF: (json['avgtempF'] as num).toDouble(),
      maxwindMph: (json['maxwindMph'] as num).toDouble(),
      maxwindKph: (json['maxwindKph'] as num).toDouble(),
      totalprecipMm: (json['totalprecipMm'] as num).toDouble(),
      totalprecipIn: (json['totalprecipIn'] as num).toDouble(),
      totalsnowCm: (json['totalsnowCm'] as num).toDouble(),
      avgvisKm: (json['avgvisKm'] as num).toDouble(),
      avgvisMiles: (json['avgvisMiles'] as num).toDouble(),
      avghumidity: json['avghumidity'] as int,
      dailyWillItRain: json['dailyWillItRain'] as int,
      dailyChanceOfRain: json['dailyChanceOfRain'] as int,
      dailyWillItSnow: json['dailyWillItSnow'] as int,
      dailyChanceOfSnow: json['dailyChanceOfSnow'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'maxtempC': instance.maxtempC,
      'maxtempF': instance.maxtempF,
      'mintempC': instance.mintempC,
      'mintempF': instance.mintempF,
      'avgtempC': instance.avgtempC,
      'avgtempF': instance.avgtempF,
      'maxwindMph': instance.maxwindMph,
      'maxwindKph': instance.maxwindKph,
      'totalprecipMm': instance.totalprecipMm,
      'totalprecipIn': instance.totalprecipIn,
      'totalsnowCm': instance.totalsnowCm,
      'avgvisKm': instance.avgvisKm,
      'avgvisMiles': instance.avgvisMiles,
      'avghumidity': instance.avghumidity,
      'dailyWillItRain': instance.dailyWillItRain,
      'dailyChanceOfRain': instance.dailyChanceOfRain,
      'dailyWillItSnow': instance.dailyWillItSnow,
      'dailyChanceOfSnow': instance.dailyChanceOfSnow,
      'condition': instance.condition,
      'uv': instance.uv,
    };

_$_Astro _$$_AstroFromJson(Map<String, dynamic> json) => _$_Astro(
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonrise: json['moonrise'] as String,
      moonset: json['moonset'] as String,
      moonPhase: json['moonPhase'] as String,
      moonIllumination: json['moonIllumination'] as String,
      isMoonUp: json['isMoonUp'] as int,
      isSunUp: json['isSunUp'] as int,
    );

Map<String, dynamic> _$$_AstroToJson(_$_Astro instance) => <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moonPhase': instance.moonPhase,
      'moonIllumination': instance.moonIllumination,
      'isMoonUp': instance.isMoonUp,
      'isSunUp': instance.isSunUp,
    };

_$_Hour _$$_HourFromJson(Map<String, dynamic> json) => _$_Hour(
      timeEpoch: json['timeEpoch'] as int,
      time: DateTime.parse(json['time'] as String),
      tempC: (json['tempC'] as num).toDouble(),
      tempF: (json['tempF'] as num).toDouble(),
      isDay: json['isDay'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['windMph'] as num).toDouble(),
      windKph: (json['windKph'] as num).toDouble(),
      windDegree: json['windDegree'] as int,
      windDir: json['windDir'] as String,
      pressureMb: (json['pressureMb'] as num).toDouble(),
      pressureIn: (json['pressureIn'] as num).toDouble(),
      precipMm: (json['precipMm'] as num).toDouble(),
      precipIn: (json['precipIn'] as num).toDouble(),
      humidity: json['humidity'] as int,
      cloud: json['cloud'] as int,
      feelslikeC: (json['feelslikeC'] as num).toDouble(),
      feelslikeF: (json['feelslikeF'] as num).toDouble(),
      windchillC: (json['windchillC'] as num).toDouble(),
      windchillF: (json['windchillF'] as num).toDouble(),
      heatindexC: (json['heatindexC'] as num).toDouble(),
      heatindexF: (json['heatindexF'] as num).toDouble(),
      dewpointC: (json['dewpointC'] as num).toDouble(),
      dewpointF: (json['dewpointF'] as num).toDouble(),
      willItRain: json['willItRain'] as int,
      chanceOfRain: json['chanceOfRain'] as int,
      willItSnow: json['willItSnow'] as int,
      chanceOfSnow: json['chanceOfSnow'] as int,
      visKm: (json['visKm'] as num).toDouble(),
      visMiles: (json['visMiles'] as num).toDouble(),
      gustMph: (json['gustMph'] as num).toDouble(),
      gustKph: (json['gustKph'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
    );

Map<String, dynamic> _$$_HourToJson(_$_Hour instance) => <String, dynamic>{
      'timeEpoch': instance.timeEpoch,
      'time': instance.time.toIso8601String(),
      'tempC': instance.tempC,
      'tempF': instance.tempF,
      'isDay': instance.isDay,
      'condition': instance.condition,
      'windMph': instance.windMph,
      'windKph': instance.windKph,
      'windDegree': instance.windDegree,
      'windDir': instance.windDir,
      'pressureMb': instance.pressureMb,
      'pressureIn': instance.pressureIn,
      'precipMm': instance.precipMm,
      'precipIn': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslikeC': instance.feelslikeC,
      'feelslikeF': instance.feelslikeF,
      'windchillC': instance.windchillC,
      'windchillF': instance.windchillF,
      'heatindexC': instance.heatindexC,
      'heatindexF': instance.heatindexF,
      'dewpointC': instance.dewpointC,
      'dewpointF': instance.dewpointF,
      'willItRain': instance.willItRain,
      'chanceOfRain': instance.chanceOfRain,
      'willItSnow': instance.willItSnow,
      'chanceOfSnow': instance.chanceOfSnow,
      'visKm': instance.visKm,
      'visMiles': instance.visMiles,
      'gustMph': instance.gustMph,
      'gustKph': instance.gustKph,
      'uv': instance.uv,
    };
