// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  Location get location => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;
  ForecastData get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call({Location location, Current current, ForecastData forecast});

  $LocationCopyWith<$Res> get location;
  $CurrentCopyWith<$Res> get current;
  $ForecastDataCopyWith<$Res> get forecast;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastDataCopyWith<$Res> get forecast {
    return $ForecastDataCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$$_ForecastCopyWith(
          _$_Forecast value, $Res Function(_$_Forecast) then) =
      __$$_ForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location location, Current current, ForecastData forecast});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentCopyWith<$Res> get current;
  @override
  $ForecastDataCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$_ForecastCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$_Forecast>
    implements _$$_ForecastCopyWith<$Res> {
  __$$_ForecastCopyWithImpl(
      _$_Forecast _value, $Res Function(_$_Forecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_$_Forecast(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastData,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_Forecast extends _Forecast {
  _$_Forecast(
      {required this.location, required this.current, required this.forecast})
      : super._();

  factory _$_Forecast.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastFromJson(json);

  @override
  final Location location;
  @override
  final Current current;
  @override
  final ForecastData forecast;

  @override
  String toString() {
    return 'Forecast(location: $location, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Forecast &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastCopyWith<_$_Forecast> get copyWith =>
      __$$_ForecastCopyWithImpl<_$_Forecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastToJson(
      this,
    );
  }
}

abstract class _Forecast extends Forecast {
  factory _Forecast(
      {required final Location location,
      required final Current current,
      required final ForecastData forecast}) = _$_Forecast;
  _Forecast._() : super._();

  factory _Forecast.fromJson(Map<String, dynamic> json) = _$_Forecast.fromJson;

  @override
  Location get location;
  @override
  Current get current;
  @override
  ForecastData get forecast;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastCopyWith<_$_Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get tzId => throw _privateConstructorUsedError;
  int get localtimeEpoch => throw _privateConstructorUsedError;
  DateTime get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      String tzId,
      int localtimeEpoch,
      DateTime localtime});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tzId = null,
    Object? localtimeEpoch = null,
    Object? localtime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tzId: null == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      String tzId,
      int localtimeEpoch,
      DateTime localtime});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tzId = null,
    Object? localtimeEpoch = null,
    Object? localtime = null,
  }) {
    return _then(_$_Location(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tzId: null == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_Location extends _Location {
  _$_Location(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      required this.tzId,
      required this.localtimeEpoch,
      required this.localtime})
      : super._();

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String tzId;
  @override
  final int localtimeEpoch;
  @override
  final DateTime localtime;

  @override
  String toString() {
    return 'Location(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localtimeEpoch: $localtimeEpoch, localtime: $localtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tzId, tzId) || other.tzId == tzId) &&
            (identical(other.localtimeEpoch, localtimeEpoch) ||
                other.localtimeEpoch == localtimeEpoch) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tzId, localtimeEpoch, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location extends Location {
  factory _Location(
      {required final String name,
      required final String region,
      required final String country,
      required final double lat,
      required final double lon,
      required final String tzId,
      required final int localtimeEpoch,
      required final DateTime localtime}) = _$_Location;
  _Location._() : super._();

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  double get lat;
  @override
  double get lon;
  @override
  String get tzId;
  @override
  int get localtimeEpoch;
  @override
  DateTime get localtime;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  int get lastUpdatedEpoch => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  double get tempC => throw _privateConstructorUsedError;
  double get tempF => throw _privateConstructorUsedError;
  int get isDay => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  double get windMph => throw _privateConstructorUsedError;
  double get windKph => throw _privateConstructorUsedError;
  int get windDegree => throw _privateConstructorUsedError;
  String get windDir => throw _privateConstructorUsedError;
  double get pressureMb => throw _privateConstructorUsedError;
  double get pressureIn => throw _privateConstructorUsedError;
  double get precipMm => throw _privateConstructorUsedError;
  double get precipIn => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  double get feelslikeC => throw _privateConstructorUsedError;
  double get feelslikeF => throw _privateConstructorUsedError;
  double get visKm => throw _privateConstructorUsedError;
  double get visMiles => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  double get gustMph => throw _privateConstructorUsedError;
  double get gustKph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {int lastUpdatedEpoch,
      DateTime lastUpdated,
      double tempC,
      double tempF,
      int isDay,
      Condition condition,
      double windMph,
      double windKph,
      int windDegree,
      String windDir,
      double pressureMb,
      double pressureIn,
      double precipMm,
      double precipIn,
      int humidity,
      int cloud,
      double feelslikeC,
      double feelslikeF,
      double visKm,
      double visMiles,
      double uv,
      double gustMph,
      double gustKph});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = null,
    Object? lastUpdated = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? isDay = null,
    Object? condition = null,
    Object? windMph = null,
    Object? windKph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? precipMm = null,
    Object? precipIn = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? visKm = null,
    Object? visMiles = null,
    Object? uv = null,
    Object? gustMph = null,
    Object? gustKph = null,
  }) {
    return _then(_value.copyWith(
      lastUpdatedEpoch: null == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      precipIn: null == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      visMiles: null == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gustMph: null == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double,
      gustKph: null == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$_CurrentCopyWith(
          _$_Current value, $Res Function(_$_Current) then) =
      __$$_CurrentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int lastUpdatedEpoch,
      DateTime lastUpdated,
      double tempC,
      double tempF,
      int isDay,
      Condition condition,
      double windMph,
      double windKph,
      int windDegree,
      String windDir,
      double pressureMb,
      double pressureIn,
      double precipMm,
      double precipIn,
      int humidity,
      int cloud,
      double feelslikeC,
      double feelslikeF,
      double visKm,
      double visMiles,
      double uv,
      double gustMph,
      double gustKph});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$_CurrentCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$_Current>
    implements _$$_CurrentCopyWith<$Res> {
  __$$_CurrentCopyWithImpl(_$_Current _value, $Res Function(_$_Current) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = null,
    Object? lastUpdated = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? isDay = null,
    Object? condition = null,
    Object? windMph = null,
    Object? windKph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? precipMm = null,
    Object? precipIn = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? visKm = null,
    Object? visMiles = null,
    Object? uv = null,
    Object? gustMph = null,
    Object? gustKph = null,
  }) {
    return _then(_$_Current(
      lastUpdatedEpoch: null == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      precipIn: null == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      visMiles: null == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gustMph: null == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double,
      gustKph: null == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_Current extends _Current {
  _$_Current(
      {required this.lastUpdatedEpoch,
      required this.lastUpdated,
      required this.tempC,
      required this.tempF,
      required this.isDay,
      required this.condition,
      required this.windMph,
      required this.windKph,
      required this.windDegree,
      required this.windDir,
      required this.pressureMb,
      required this.pressureIn,
      required this.precipMm,
      required this.precipIn,
      required this.humidity,
      required this.cloud,
      required this.feelslikeC,
      required this.feelslikeF,
      required this.visKm,
      required this.visMiles,
      required this.uv,
      required this.gustMph,
      required this.gustKph})
      : super._();

  factory _$_Current.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentFromJson(json);

  @override
  final int lastUpdatedEpoch;
  @override
  final DateTime lastUpdated;
  @override
  final double tempC;
  @override
  final double tempF;
  @override
  final int isDay;
  @override
  final Condition condition;
  @override
  final double windMph;
  @override
  final double windKph;
  @override
  final int windDegree;
  @override
  final String windDir;
  @override
  final double pressureMb;
  @override
  final double pressureIn;
  @override
  final double precipMm;
  @override
  final double precipIn;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  final double feelslikeC;
  @override
  final double feelslikeF;
  @override
  final double visKm;
  @override
  final double visMiles;
  @override
  final double uv;
  @override
  final double gustMph;
  @override
  final double gustKph;

  @override
  String toString() {
    return 'Current(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Current &&
            (identical(other.lastUpdatedEpoch, lastUpdatedEpoch) ||
                other.lastUpdatedEpoch == lastUpdatedEpoch) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.pressureIn, pressureIn) ||
                other.pressureIn == pressureIn) &&
            (identical(other.precipMm, precipMm) ||
                other.precipMm == precipMm) &&
            (identical(other.precipIn, precipIn) ||
                other.precipIn == precipIn) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslikeC, feelslikeC) ||
                other.feelslikeC == feelslikeC) &&
            (identical(other.feelslikeF, feelslikeF) ||
                other.feelslikeF == feelslikeF) &&
            (identical(other.visKm, visKm) || other.visKm == visKm) &&
            (identical(other.visMiles, visMiles) ||
                other.visMiles == visMiles) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.gustMph, gustMph) || other.gustMph == gustMph) &&
            (identical(other.gustKph, gustKph) || other.gustKph == gustKph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lastUpdatedEpoch,
        lastUpdated,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        visKm,
        visMiles,
        uv,
        gustMph,
        gustKph
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      __$$_CurrentCopyWithImpl<_$_Current>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentToJson(
      this,
    );
  }
}

abstract class _Current extends Current {
  factory _Current(
      {required final int lastUpdatedEpoch,
      required final DateTime lastUpdated,
      required final double tempC,
      required final double tempF,
      required final int isDay,
      required final Condition condition,
      required final double windMph,
      required final double windKph,
      required final int windDegree,
      required final String windDir,
      required final double pressureMb,
      required final double pressureIn,
      required final double precipMm,
      required final double precipIn,
      required final int humidity,
      required final int cloud,
      required final double feelslikeC,
      required final double feelslikeF,
      required final double visKm,
      required final double visMiles,
      required final double uv,
      required final double gustMph,
      required final double gustKph}) = _$_Current;
  _Current._() : super._();

  factory _Current.fromJson(Map<String, dynamic> json) = _$_Current.fromJson;

  @override
  int get lastUpdatedEpoch;
  @override
  DateTime get lastUpdated;
  @override
  double get tempC;
  @override
  double get tempF;
  @override
  int get isDay;
  @override
  Condition get condition;
  @override
  double get windMph;
  @override
  double get windKph;
  @override
  int get windDegree;
  @override
  String get windDir;
  @override
  double get pressureMb;
  @override
  double get pressureIn;
  @override
  double get precipMm;
  @override
  double get precipIn;
  @override
  int get humidity;
  @override
  int get cloud;
  @override
  double get feelslikeC;
  @override
  double get feelslikeF;
  @override
  double get visKm;
  @override
  double get visMiles;
  @override
  double get uv;
  @override
  double get gustMph;
  @override
  double get gustKph;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConditionCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory _$$_ConditionCopyWith(
          _$_Condition value, $Res Function(_$_Condition) then) =
      __$$_ConditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class __$$_ConditionCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$_Condition>
    implements _$$_ConditionCopyWith<$Res> {
  __$$_ConditionCopyWithImpl(
      _$_Condition _value, $Res Function(_$_Condition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$_Condition(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_Condition extends _Condition {
  _$_Condition({required this.text, required this.icon, required this.code})
      : super._();

  factory _$_Condition.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  @override
  String toString() {
    return 'Condition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Condition &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConditionCopyWith<_$_Condition> get copyWith =>
      __$$_ConditionCopyWithImpl<_$_Condition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionToJson(
      this,
    );
  }
}

abstract class _Condition extends Condition {
  factory _Condition(
      {required final String text,
      required final String icon,
      required final int code}) = _$_Condition;
  _Condition._() : super._();

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$_Condition.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionCopyWith<_$_Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastData _$ForecastDataFromJson(Map<String, dynamic> json) {
  return _ForecastData.fromJson(json);
}

/// @nodoc
mixin _$ForecastData {
  List<ForecastDay> get forecastday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDataCopyWith<ForecastData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDataCopyWith<$Res> {
  factory $ForecastDataCopyWith(
          ForecastData value, $Res Function(ForecastData) then) =
      _$ForecastDataCopyWithImpl<$Res, ForecastData>;
  @useResult
  $Res call({List<ForecastDay> forecastday});
}

/// @nodoc
class _$ForecastDataCopyWithImpl<$Res, $Val extends ForecastData>
    implements $ForecastDataCopyWith<$Res> {
  _$ForecastDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_value.copyWith(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastDataCopyWith<$Res>
    implements $ForecastDataCopyWith<$Res> {
  factory _$$_ForecastDataCopyWith(
          _$_ForecastData value, $Res Function(_$_ForecastData) then) =
      __$$_ForecastDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastDay> forecastday});
}

/// @nodoc
class __$$_ForecastDataCopyWithImpl<$Res>
    extends _$ForecastDataCopyWithImpl<$Res, _$_ForecastData>
    implements _$$_ForecastDataCopyWith<$Res> {
  __$$_ForecastDataCopyWithImpl(
      _$_ForecastData _value, $Res Function(_$_ForecastData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$_ForecastData(
      forecastday: null == forecastday
          ? _value._forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_ForecastData extends _ForecastData {
  _$_ForecastData({required final List<ForecastDay> forecastday})
      : _forecastday = forecastday,
        super._();

  factory _$_ForecastData.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastDataFromJson(json);

  final List<ForecastDay> _forecastday;
  @override
  List<ForecastDay> get forecastday {
    if (_forecastday is EqualUnmodifiableListView) return _forecastday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastday);
  }

  @override
  String toString() {
    return 'ForecastData(forecastday: $forecastday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastData &&
            const DeepCollectionEquality()
                .equals(other._forecastday, _forecastday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_forecastday));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastDataCopyWith<_$_ForecastData> get copyWith =>
      __$$_ForecastDataCopyWithImpl<_$_ForecastData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastDataToJson(
      this,
    );
  }
}

abstract class _ForecastData extends ForecastData {
  factory _ForecastData({required final List<ForecastDay> forecastday}) =
      _$_ForecastData;
  _ForecastData._() : super._();

  factory _ForecastData.fromJson(Map<String, dynamic> json) =
      _$_ForecastData.fromJson;

  @override
  List<ForecastDay> get forecastday;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastDataCopyWith<_$_ForecastData> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return _ForecastDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastDay {
  String get date => throw _privateConstructorUsedError;
  int get dateEpoch => throw _privateConstructorUsedError;
  Day get day => throw _privateConstructorUsedError;
  Astro get astro => throw _privateConstructorUsedError;
  List<Hour> get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayCopyWith<ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res, ForecastDay>;
  @useResult
  $Res call(
      {String date, int dateEpoch, Day day, Astro astro, List<Hour> hour});

  $DayCopyWith<$Res> get day;
  $AstroCopyWith<$Res> get astro;
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res, $Val extends ForecastDay>
    implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dateEpoch = null,
    Object? day = null,
    Object? astro = null,
    Object? hour = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dateEpoch: null == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as Astro,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get day {
    return $DayCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AstroCopyWith<$Res> get astro {
    return $AstroCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastDayCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory _$$_ForecastDayCopyWith(
          _$_ForecastDay value, $Res Function(_$_ForecastDay) then) =
      __$$_ForecastDayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date, int dateEpoch, Day day, Astro astro, List<Hour> hour});

  @override
  $DayCopyWith<$Res> get day;
  @override
  $AstroCopyWith<$Res> get astro;
}

/// @nodoc
class __$$_ForecastDayCopyWithImpl<$Res>
    extends _$ForecastDayCopyWithImpl<$Res, _$_ForecastDay>
    implements _$$_ForecastDayCopyWith<$Res> {
  __$$_ForecastDayCopyWithImpl(
      _$_ForecastDay _value, $Res Function(_$_ForecastDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dateEpoch = null,
    Object? day = null,
    Object? astro = null,
    Object? hour = null,
  }) {
    return _then(_$_ForecastDay(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dateEpoch: null == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as Astro,
      hour: null == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_ForecastDay extends _ForecastDay {
  _$_ForecastDay(
      {required this.date,
      required this.dateEpoch,
      required this.day,
      required this.astro,
      required final List<Hour> hour})
      : _hour = hour,
        super._();

  factory _$_ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastDayFromJson(json);

  @override
  final String date;
  @override
  final int dateEpoch;
  @override
  final Day day;
  @override
  final Astro astro;
  final List<Hour> _hour;
  @override
  List<Hour> get hour {
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour);
  }

  @override
  String toString() {
    return 'ForecastDay(date: $date, dateEpoch: $dateEpoch, day: $day, astro: $astro, hour: $hour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastDay &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateEpoch, dateEpoch) ||
                other.dateEpoch == dateEpoch) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.astro, astro) || other.astro == astro) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, dateEpoch, day, astro,
      const DeepCollectionEquality().hash(_hour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastDayCopyWith<_$_ForecastDay> get copyWith =>
      __$$_ForecastDayCopyWithImpl<_$_ForecastDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastDayToJson(
      this,
    );
  }
}

abstract class _ForecastDay extends ForecastDay {
  factory _ForecastDay(
      {required final String date,
      required final int dateEpoch,
      required final Day day,
      required final Astro astro,
      required final List<Hour> hour}) = _$_ForecastDay;
  _ForecastDay._() : super._();

  factory _ForecastDay.fromJson(Map<String, dynamic> json) =
      _$_ForecastDay.fromJson;

  @override
  String get date;
  @override
  int get dateEpoch;
  @override
  Day get day;
  @override
  Astro get astro;
  @override
  List<Hour> get hour;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastDayCopyWith<_$_ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  num get maxtempC => throw _privateConstructorUsedError;
  num get maxtempF => throw _privateConstructorUsedError;
  num get mintempC => throw _privateConstructorUsedError;
  num get mintempF => throw _privateConstructorUsedError;
  num get avgtempC => throw _privateConstructorUsedError;
  num get avgtempF => throw _privateConstructorUsedError;
  num get maxwindMph => throw _privateConstructorUsedError;
  num get maxwindKph => throw _privateConstructorUsedError;
  num get totalprecipMm => throw _privateConstructorUsedError;
  num get totalprecipIn => throw _privateConstructorUsedError;
  num get totalsnowCm => throw _privateConstructorUsedError;
  num get avgvisKm => throw _privateConstructorUsedError;
  num get avgvisMiles => throw _privateConstructorUsedError;
  num get avghumidity => throw _privateConstructorUsedError;
  num get dailyWillItRain => throw _privateConstructorUsedError;
  num get dailyChanceOfRain => throw _privateConstructorUsedError;
  num get dailyWillItSnow => throw _privateConstructorUsedError;
  num get dailyChanceOfSnow => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  num get uv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {num maxtempC,
      num maxtempF,
      num mintempC,
      num mintempF,
      num avgtempC,
      num avgtempF,
      num maxwindMph,
      num maxwindKph,
      num totalprecipMm,
      num totalprecipIn,
      num totalsnowCm,
      num avgvisKm,
      num avgvisMiles,
      num avghumidity,
      num dailyWillItRain,
      num dailyChanceOfRain,
      num dailyWillItSnow,
      num dailyChanceOfSnow,
      Condition condition,
      num uv});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = null,
    Object? maxtempF = null,
    Object? mintempC = null,
    Object? mintempF = null,
    Object? avgtempC = null,
    Object? avgtempF = null,
    Object? maxwindMph = null,
    Object? maxwindKph = null,
    Object? totalprecipMm = null,
    Object? totalprecipIn = null,
    Object? totalsnowCm = null,
    Object? avgvisKm = null,
    Object? avgvisMiles = null,
    Object? avghumidity = null,
    Object? dailyWillItRain = null,
    Object? dailyChanceOfRain = null,
    Object? dailyWillItSnow = null,
    Object? dailyChanceOfSnow = null,
    Object? condition = null,
    Object? uv = null,
  }) {
    return _then(_value.copyWith(
      maxtempC: null == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as num,
      maxtempF: null == maxtempF
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as num,
      mintempC: null == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as num,
      mintempF: null == mintempF
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as num,
      avgtempC: null == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as num,
      avgtempF: null == avgtempF
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as num,
      maxwindMph: null == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as num,
      maxwindKph: null == maxwindKph
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as num,
      totalprecipMm: null == totalprecipMm
          ? _value.totalprecipMm
          : totalprecipMm // ignore: cast_nullable_to_non_nullable
              as num,
      totalprecipIn: null == totalprecipIn
          ? _value.totalprecipIn
          : totalprecipIn // ignore: cast_nullable_to_non_nullable
              as num,
      totalsnowCm: null == totalsnowCm
          ? _value.totalsnowCm
          : totalsnowCm // ignore: cast_nullable_to_non_nullable
              as num,
      avgvisKm: null == avgvisKm
          ? _value.avgvisKm
          : avgvisKm // ignore: cast_nullable_to_non_nullable
              as num,
      avgvisMiles: null == avgvisMiles
          ? _value.avgvisMiles
          : avgvisMiles // ignore: cast_nullable_to_non_nullable
              as num,
      avghumidity: null == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as num,
      dailyWillItRain: null == dailyWillItRain
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as num,
      dailyChanceOfRain: null == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as num,
      dailyWillItSnow: null == dailyWillItSnow
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as num,
      dailyChanceOfSnow: null == dailyChanceOfSnow
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as num,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$_DayCopyWith(_$_Day value, $Res Function(_$_Day) then) =
      __$$_DayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num maxtempC,
      num maxtempF,
      num mintempC,
      num mintempF,
      num avgtempC,
      num avgtempF,
      num maxwindMph,
      num maxwindKph,
      num totalprecipMm,
      num totalprecipIn,
      num totalsnowCm,
      num avgvisKm,
      num avgvisMiles,
      num avghumidity,
      num dailyWillItRain,
      num dailyChanceOfRain,
      num dailyWillItSnow,
      num dailyChanceOfSnow,
      Condition condition,
      num uv});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$_DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$_Day>
    implements _$$_DayCopyWith<$Res> {
  __$$_DayCopyWithImpl(_$_Day _value, $Res Function(_$_Day) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = null,
    Object? maxtempF = null,
    Object? mintempC = null,
    Object? mintempF = null,
    Object? avgtempC = null,
    Object? avgtempF = null,
    Object? maxwindMph = null,
    Object? maxwindKph = null,
    Object? totalprecipMm = null,
    Object? totalprecipIn = null,
    Object? totalsnowCm = null,
    Object? avgvisKm = null,
    Object? avgvisMiles = null,
    Object? avghumidity = null,
    Object? dailyWillItRain = null,
    Object? dailyChanceOfRain = null,
    Object? dailyWillItSnow = null,
    Object? dailyChanceOfSnow = null,
    Object? condition = null,
    Object? uv = null,
  }) {
    return _then(_$_Day(
      maxtempC: null == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as num,
      maxtempF: null == maxtempF
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as num,
      mintempC: null == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as num,
      mintempF: null == mintempF
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as num,
      avgtempC: null == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as num,
      avgtempF: null == avgtempF
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as num,
      maxwindMph: null == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as num,
      maxwindKph: null == maxwindKph
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as num,
      totalprecipMm: null == totalprecipMm
          ? _value.totalprecipMm
          : totalprecipMm // ignore: cast_nullable_to_non_nullable
              as num,
      totalprecipIn: null == totalprecipIn
          ? _value.totalprecipIn
          : totalprecipIn // ignore: cast_nullable_to_non_nullable
              as num,
      totalsnowCm: null == totalsnowCm
          ? _value.totalsnowCm
          : totalsnowCm // ignore: cast_nullable_to_non_nullable
              as num,
      avgvisKm: null == avgvisKm
          ? _value.avgvisKm
          : avgvisKm // ignore: cast_nullable_to_non_nullable
              as num,
      avgvisMiles: null == avgvisMiles
          ? _value.avgvisMiles
          : avgvisMiles // ignore: cast_nullable_to_non_nullable
              as num,
      avghumidity: null == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as num,
      dailyWillItRain: null == dailyWillItRain
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as num,
      dailyChanceOfRain: null == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as num,
      dailyWillItSnow: null == dailyWillItSnow
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as num,
      dailyChanceOfSnow: null == dailyChanceOfSnow
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as num,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_Day extends _Day {
  _$_Day(
      {required this.maxtempC,
      required this.maxtempF,
      required this.mintempC,
      required this.mintempF,
      required this.avgtempC,
      required this.avgtempF,
      required this.maxwindMph,
      required this.maxwindKph,
      required this.totalprecipMm,
      required this.totalprecipIn,
      required this.totalsnowCm,
      required this.avgvisKm,
      required this.avgvisMiles,
      required this.avghumidity,
      required this.dailyWillItRain,
      required this.dailyChanceOfRain,
      required this.dailyWillItSnow,
      required this.dailyChanceOfSnow,
      required this.condition,
      required this.uv})
      : super._();

  factory _$_Day.fromJson(Map<String, dynamic> json) => _$$_DayFromJson(json);

  @override
  final num maxtempC;
  @override
  final num maxtempF;
  @override
  final num mintempC;
  @override
  final num mintempF;
  @override
  final num avgtempC;
  @override
  final num avgtempF;
  @override
  final num maxwindMph;
  @override
  final num maxwindKph;
  @override
  final num totalprecipMm;
  @override
  final num totalprecipIn;
  @override
  final num totalsnowCm;
  @override
  final num avgvisKm;
  @override
  final num avgvisMiles;
  @override
  final num avghumidity;
  @override
  final num dailyWillItRain;
  @override
  final num dailyChanceOfRain;
  @override
  final num dailyWillItSnow;
  @override
  final num dailyChanceOfSnow;
  @override
  final Condition condition;
  @override
  final num uv;

  @override
  String toString() {
    return 'Day(maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindMph: $maxwindMph, maxwindKph: $maxwindKph, totalprecipMm: $totalprecipMm, totalprecipIn: $totalprecipIn, totalsnowCm: $totalsnowCm, avgvisKm: $avgvisKm, avgvisMiles: $avgvisMiles, avghumidity: $avghumidity, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Day &&
            (identical(other.maxtempC, maxtempC) ||
                other.maxtempC == maxtempC) &&
            (identical(other.maxtempF, maxtempF) ||
                other.maxtempF == maxtempF) &&
            (identical(other.mintempC, mintempC) ||
                other.mintempC == mintempC) &&
            (identical(other.mintempF, mintempF) ||
                other.mintempF == mintempF) &&
            (identical(other.avgtempC, avgtempC) ||
                other.avgtempC == avgtempC) &&
            (identical(other.avgtempF, avgtempF) ||
                other.avgtempF == avgtempF) &&
            (identical(other.maxwindMph, maxwindMph) ||
                other.maxwindMph == maxwindMph) &&
            (identical(other.maxwindKph, maxwindKph) ||
                other.maxwindKph == maxwindKph) &&
            (identical(other.totalprecipMm, totalprecipMm) ||
                other.totalprecipMm == totalprecipMm) &&
            (identical(other.totalprecipIn, totalprecipIn) ||
                other.totalprecipIn == totalprecipIn) &&
            (identical(other.totalsnowCm, totalsnowCm) ||
                other.totalsnowCm == totalsnowCm) &&
            (identical(other.avgvisKm, avgvisKm) ||
                other.avgvisKm == avgvisKm) &&
            (identical(other.avgvisMiles, avgvisMiles) ||
                other.avgvisMiles == avgvisMiles) &&
            (identical(other.avghumidity, avghumidity) ||
                other.avghumidity == avghumidity) &&
            (identical(other.dailyWillItRain, dailyWillItRain) ||
                other.dailyWillItRain == dailyWillItRain) &&
            (identical(other.dailyChanceOfRain, dailyChanceOfRain) ||
                other.dailyChanceOfRain == dailyChanceOfRain) &&
            (identical(other.dailyWillItSnow, dailyWillItSnow) ||
                other.dailyWillItSnow == dailyWillItSnow) &&
            (identical(other.dailyChanceOfSnow, dailyChanceOfSnow) ||
                other.dailyChanceOfSnow == dailyChanceOfSnow) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        maxtempC,
        maxtempF,
        mintempC,
        mintempF,
        avgtempC,
        avgtempF,
        maxwindMph,
        maxwindKph,
        totalprecipMm,
        totalprecipIn,
        totalsnowCm,
        avgvisKm,
        avgvisMiles,
        avghumidity,
        dailyWillItRain,
        dailyChanceOfRain,
        dailyWillItSnow,
        dailyChanceOfSnow,
        condition,
        uv
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayCopyWith<_$_Day> get copyWith =>
      __$$_DayCopyWithImpl<_$_Day>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayToJson(
      this,
    );
  }
}

abstract class _Day extends Day {
  factory _Day(
      {required final num maxtempC,
      required final num maxtempF,
      required final num mintempC,
      required final num mintempF,
      required final num avgtempC,
      required final num avgtempF,
      required final num maxwindMph,
      required final num maxwindKph,
      required final num totalprecipMm,
      required final num totalprecipIn,
      required final num totalsnowCm,
      required final num avgvisKm,
      required final num avgvisMiles,
      required final num avghumidity,
      required final num dailyWillItRain,
      required final num dailyChanceOfRain,
      required final num dailyWillItSnow,
      required final num dailyChanceOfSnow,
      required final Condition condition,
      required final num uv}) = _$_Day;
  _Day._() : super._();

  factory _Day.fromJson(Map<String, dynamic> json) = _$_Day.fromJson;

  @override
  num get maxtempC;
  @override
  num get maxtempF;
  @override
  num get mintempC;
  @override
  num get mintempF;
  @override
  num get avgtempC;
  @override
  num get avgtempF;
  @override
  num get maxwindMph;
  @override
  num get maxwindKph;
  @override
  num get totalprecipMm;
  @override
  num get totalprecipIn;
  @override
  num get totalsnowCm;
  @override
  num get avgvisKm;
  @override
  num get avgvisMiles;
  @override
  num get avghumidity;
  @override
  num get dailyWillItRain;
  @override
  num get dailyChanceOfRain;
  @override
  num get dailyWillItSnow;
  @override
  num get dailyChanceOfSnow;
  @override
  Condition get condition;
  @override
  num get uv;
  @override
  @JsonKey(ignore: true)
  _$$_DayCopyWith<_$_Day> get copyWith => throw _privateConstructorUsedError;
}

Astro _$AstroFromJson(Map<String, dynamic> json) {
  return _Astro.fromJson(json);
}

/// @nodoc
mixin _$Astro {
  TimeOfDay get sunrise => throw _privateConstructorUsedError;
  TimeOfDay get sunset => throw _privateConstructorUsedError;
  TimeOfDay get moonrise => throw _privateConstructorUsedError;
  TimeOfDay get moonset => throw _privateConstructorUsedError;
  String get moonPhase => throw _privateConstructorUsedError;
  String get moonIllumination => throw _privateConstructorUsedError;
  int get isMoonUp => throw _privateConstructorUsedError;
  int get isSunUp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstroCopyWith<Astro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroCopyWith<$Res> {
  factory $AstroCopyWith(Astro value, $Res Function(Astro) then) =
      _$AstroCopyWithImpl<$Res, Astro>;
  @useResult
  $Res call(
      {TimeOfDay sunrise,
      TimeOfDay sunset,
      TimeOfDay moonrise,
      TimeOfDay moonset,
      String moonPhase,
      String moonIllumination,
      int isMoonUp,
      int isSunUp});
}

/// @nodoc
class _$AstroCopyWithImpl<$Res, $Val extends Astro>
    implements $AstroCopyWith<$Res> {
  _$AstroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
    Object? moonPhase = null,
    Object? moonIllumination = null,
    Object? isMoonUp = null,
    Object? isSunUp = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moonPhase: null == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String,
      moonIllumination: null == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as String,
      isMoonUp: null == isMoonUp
          ? _value.isMoonUp
          : isMoonUp // ignore: cast_nullable_to_non_nullable
              as int,
      isSunUp: null == isSunUp
          ? _value.isSunUp
          : isSunUp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AstroCopyWith<$Res> implements $AstroCopyWith<$Res> {
  factory _$$_AstroCopyWith(_$_Astro value, $Res Function(_$_Astro) then) =
      __$$_AstroCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeOfDay sunrise,
      TimeOfDay sunset,
      TimeOfDay moonrise,
      TimeOfDay moonset,
      String moonPhase,
      String moonIllumination,
      int isMoonUp,
      int isSunUp});
}

/// @nodoc
class __$$_AstroCopyWithImpl<$Res> extends _$AstroCopyWithImpl<$Res, _$_Astro>
    implements _$$_AstroCopyWith<$Res> {
  __$$_AstroCopyWithImpl(_$_Astro _value, $Res Function(_$_Astro) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
    Object? moonPhase = null,
    Object? moonIllumination = null,
    Object? isMoonUp = null,
    Object? isSunUp = null,
  }) {
    return _then(_$_Astro(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      moonPhase: null == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String,
      moonIllumination: null == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as String,
      isMoonUp: null == isMoonUp
          ? _value.isMoonUp
          : isMoonUp // ignore: cast_nullable_to_non_nullable
              as int,
      isSunUp: null == isSunUp
          ? _value.isSunUp
          : isSunUp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    converters: [TimeOfDayJsonConverter()])
class _$_Astro extends _Astro {
  _$_Astro(
      {required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset,
      required this.moonPhase,
      required this.moonIllumination,
      required this.isMoonUp,
      required this.isSunUp})
      : super._();

  factory _$_Astro.fromJson(Map<String, dynamic> json) =>
      _$$_AstroFromJson(json);

  @override
  final TimeOfDay sunrise;
  @override
  final TimeOfDay sunset;
  @override
  final TimeOfDay moonrise;
  @override
  final TimeOfDay moonset;
  @override
  final String moonPhase;
  @override
  final String moonIllumination;
  @override
  final int isMoonUp;
  @override
  final int isSunUp;

  @override
  String toString() {
    return 'Astro(sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, moonIllumination: $moonIllumination, isMoonUp: $isMoonUp, isSunUp: $isSunUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Astro &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.moonIllumination, moonIllumination) ||
                other.moonIllumination == moonIllumination) &&
            (identical(other.isMoonUp, isMoonUp) ||
                other.isMoonUp == isMoonUp) &&
            (identical(other.isSunUp, isSunUp) || other.isSunUp == isSunUp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset, moonrise,
      moonset, moonPhase, moonIllumination, isMoonUp, isSunUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AstroCopyWith<_$_Astro> get copyWith =>
      __$$_AstroCopyWithImpl<_$_Astro>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AstroToJson(
      this,
    );
  }
}

abstract class _Astro extends Astro {
  factory _Astro(
      {required final TimeOfDay sunrise,
      required final TimeOfDay sunset,
      required final TimeOfDay moonrise,
      required final TimeOfDay moonset,
      required final String moonPhase,
      required final String moonIllumination,
      required final int isMoonUp,
      required final int isSunUp}) = _$_Astro;
  _Astro._() : super._();

  factory _Astro.fromJson(Map<String, dynamic> json) = _$_Astro.fromJson;

  @override
  TimeOfDay get sunrise;
  @override
  TimeOfDay get sunset;
  @override
  TimeOfDay get moonrise;
  @override
  TimeOfDay get moonset;
  @override
  String get moonPhase;
  @override
  String get moonIllumination;
  @override
  int get isMoonUp;
  @override
  int get isSunUp;
  @override
  @JsonKey(ignore: true)
  _$$_AstroCopyWith<_$_Astro> get copyWith =>
      throw _privateConstructorUsedError;
}

Hour _$HourFromJson(Map<String, dynamic> json) {
  return _Hour.fromJson(json);
}

/// @nodoc
mixin _$Hour {
  int get timeEpoch => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  double get tempC => throw _privateConstructorUsedError;
  double get tempF => throw _privateConstructorUsedError;
  int get isDay => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  double get windMph => throw _privateConstructorUsedError;
  double get windKph => throw _privateConstructorUsedError;
  int get windDegree => throw _privateConstructorUsedError;
  String get windDir => throw _privateConstructorUsedError;
  double get pressureMb => throw _privateConstructorUsedError;
  double get pressureIn => throw _privateConstructorUsedError;
  double get precipMm => throw _privateConstructorUsedError;
  double get precipIn => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  double get feelslikeC => throw _privateConstructorUsedError;
  double get feelslikeF => throw _privateConstructorUsedError;
  double get windchillC => throw _privateConstructorUsedError;
  double get windchillF => throw _privateConstructorUsedError;
  double get heatindexC => throw _privateConstructorUsedError;
  double get heatindexF => throw _privateConstructorUsedError;
  double get dewpointC => throw _privateConstructorUsedError;
  double get dewpointF => throw _privateConstructorUsedError;
  int get willItRain => throw _privateConstructorUsedError;
  int get chanceOfRain => throw _privateConstructorUsedError;
  int get willItSnow => throw _privateConstructorUsedError;
  int get chanceOfSnow => throw _privateConstructorUsedError;
  double get visKm => throw _privateConstructorUsedError;
  double get visMiles => throw _privateConstructorUsedError;
  double get gustMph => throw _privateConstructorUsedError;
  double get gustKph => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourCopyWith<Hour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourCopyWith<$Res> {
  factory $HourCopyWith(Hour value, $Res Function(Hour) then) =
      _$HourCopyWithImpl<$Res, Hour>;
  @useResult
  $Res call(
      {int timeEpoch,
      DateTime time,
      double tempC,
      double tempF,
      int isDay,
      Condition condition,
      double windMph,
      double windKph,
      int windDegree,
      String windDir,
      double pressureMb,
      double pressureIn,
      double precipMm,
      double precipIn,
      int humidity,
      int cloud,
      double feelslikeC,
      double feelslikeF,
      double windchillC,
      double windchillF,
      double heatindexC,
      double heatindexF,
      double dewpointC,
      double dewpointF,
      int willItRain,
      int chanceOfRain,
      int willItSnow,
      int chanceOfSnow,
      double visKm,
      double visMiles,
      double gustMph,
      double gustKph,
      double uv});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$HourCopyWithImpl<$Res, $Val extends Hour>
    implements $HourCopyWith<$Res> {
  _$HourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeEpoch = null,
    Object? time = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? isDay = null,
    Object? condition = null,
    Object? windMph = null,
    Object? windKph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? precipMm = null,
    Object? precipIn = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? windchillC = null,
    Object? windchillF = null,
    Object? heatindexC = null,
    Object? heatindexF = null,
    Object? dewpointC = null,
    Object? dewpointF = null,
    Object? willItRain = null,
    Object? chanceOfRain = null,
    Object? willItSnow = null,
    Object? chanceOfSnow = null,
    Object? visKm = null,
    Object? visMiles = null,
    Object? gustMph = null,
    Object? gustKph = null,
    Object? uv = null,
  }) {
    return _then(_value.copyWith(
      timeEpoch: null == timeEpoch
          ? _value.timeEpoch
          : timeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      precipIn: null == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      windchillC: null == windchillC
          ? _value.windchillC
          : windchillC // ignore: cast_nullable_to_non_nullable
              as double,
      windchillF: null == windchillF
          ? _value.windchillF
          : windchillF // ignore: cast_nullable_to_non_nullable
              as double,
      heatindexC: null == heatindexC
          ? _value.heatindexC
          : heatindexC // ignore: cast_nullable_to_non_nullable
              as double,
      heatindexF: null == heatindexF
          ? _value.heatindexF
          : heatindexF // ignore: cast_nullable_to_non_nullable
              as double,
      dewpointC: null == dewpointC
          ? _value.dewpointC
          : dewpointC // ignore: cast_nullable_to_non_nullable
              as double,
      dewpointF: null == dewpointF
          ? _value.dewpointF
          : dewpointF // ignore: cast_nullable_to_non_nullable
              as double,
      willItRain: null == willItRain
          ? _value.willItRain
          : willItRain // ignore: cast_nullable_to_non_nullable
              as int,
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
      willItSnow: null == willItSnow
          ? _value.willItSnow
          : willItSnow // ignore: cast_nullable_to_non_nullable
              as int,
      chanceOfSnow: null == chanceOfSnow
          ? _value.chanceOfSnow
          : chanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      visMiles: null == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as double,
      gustMph: null == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double,
      gustKph: null == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HourCopyWith<$Res> implements $HourCopyWith<$Res> {
  factory _$$_HourCopyWith(_$_Hour value, $Res Function(_$_Hour) then) =
      __$$_HourCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timeEpoch,
      DateTime time,
      double tempC,
      double tempF,
      int isDay,
      Condition condition,
      double windMph,
      double windKph,
      int windDegree,
      String windDir,
      double pressureMb,
      double pressureIn,
      double precipMm,
      double precipIn,
      int humidity,
      int cloud,
      double feelslikeC,
      double feelslikeF,
      double windchillC,
      double windchillF,
      double heatindexC,
      double heatindexF,
      double dewpointC,
      double dewpointF,
      int willItRain,
      int chanceOfRain,
      int willItSnow,
      int chanceOfSnow,
      double visKm,
      double visMiles,
      double gustMph,
      double gustKph,
      double uv});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$_HourCopyWithImpl<$Res> extends _$HourCopyWithImpl<$Res, _$_Hour>
    implements _$$_HourCopyWith<$Res> {
  __$$_HourCopyWithImpl(_$_Hour _value, $Res Function(_$_Hour) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeEpoch = null,
    Object? time = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? isDay = null,
    Object? condition = null,
    Object? windMph = null,
    Object? windKph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? precipMm = null,
    Object? precipIn = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? windchillC = null,
    Object? windchillF = null,
    Object? heatindexC = null,
    Object? heatindexF = null,
    Object? dewpointC = null,
    Object? dewpointF = null,
    Object? willItRain = null,
    Object? chanceOfRain = null,
    Object? willItSnow = null,
    Object? chanceOfSnow = null,
    Object? visKm = null,
    Object? visMiles = null,
    Object? gustMph = null,
    Object? gustKph = null,
    Object? uv = null,
  }) {
    return _then(_$_Hour(
      timeEpoch: null == timeEpoch
          ? _value.timeEpoch
          : timeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      precipIn: null == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      windchillC: null == windchillC
          ? _value.windchillC
          : windchillC // ignore: cast_nullable_to_non_nullable
              as double,
      windchillF: null == windchillF
          ? _value.windchillF
          : windchillF // ignore: cast_nullable_to_non_nullable
              as double,
      heatindexC: null == heatindexC
          ? _value.heatindexC
          : heatindexC // ignore: cast_nullable_to_non_nullable
              as double,
      heatindexF: null == heatindexF
          ? _value.heatindexF
          : heatindexF // ignore: cast_nullable_to_non_nullable
              as double,
      dewpointC: null == dewpointC
          ? _value.dewpointC
          : dewpointC // ignore: cast_nullable_to_non_nullable
              as double,
      dewpointF: null == dewpointF
          ? _value.dewpointF
          : dewpointF // ignore: cast_nullable_to_non_nullable
              as double,
      willItRain: null == willItRain
          ? _value.willItRain
          : willItRain // ignore: cast_nullable_to_non_nullable
              as int,
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
      willItSnow: null == willItSnow
          ? _value.willItSnow
          : willItSnow // ignore: cast_nullable_to_non_nullable
              as int,
      chanceOfSnow: null == chanceOfSnow
          ? _value.chanceOfSnow
          : chanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      visMiles: null == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as double,
      gustMph: null == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double,
      gustKph: null == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_Hour extends _Hour {
  _$_Hour(
      {required this.timeEpoch,
      required this.time,
      required this.tempC,
      required this.tempF,
      required this.isDay,
      required this.condition,
      required this.windMph,
      required this.windKph,
      required this.windDegree,
      required this.windDir,
      required this.pressureMb,
      required this.pressureIn,
      required this.precipMm,
      required this.precipIn,
      required this.humidity,
      required this.cloud,
      required this.feelslikeC,
      required this.feelslikeF,
      required this.windchillC,
      required this.windchillF,
      required this.heatindexC,
      required this.heatindexF,
      required this.dewpointC,
      required this.dewpointF,
      required this.willItRain,
      required this.chanceOfRain,
      required this.willItSnow,
      required this.chanceOfSnow,
      required this.visKm,
      required this.visMiles,
      required this.gustMph,
      required this.gustKph,
      required this.uv})
      : super._();

  factory _$_Hour.fromJson(Map<String, dynamic> json) => _$$_HourFromJson(json);

  @override
  final int timeEpoch;
  @override
  final DateTime time;
  @override
  final double tempC;
  @override
  final double tempF;
  @override
  final int isDay;
  @override
  final Condition condition;
  @override
  final double windMph;
  @override
  final double windKph;
  @override
  final int windDegree;
  @override
  final String windDir;
  @override
  final double pressureMb;
  @override
  final double pressureIn;
  @override
  final double precipMm;
  @override
  final double precipIn;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  final double feelslikeC;
  @override
  final double feelslikeF;
  @override
  final double windchillC;
  @override
  final double windchillF;
  @override
  final double heatindexC;
  @override
  final double heatindexF;
  @override
  final double dewpointC;
  @override
  final double dewpointF;
  @override
  final int willItRain;
  @override
  final int chanceOfRain;
  @override
  final int willItSnow;
  @override
  final int chanceOfSnow;
  @override
  final double visKm;
  @override
  final double visMiles;
  @override
  final double gustMph;
  @override
  final double gustKph;
  @override
  final double uv;

  @override
  String toString() {
    return 'Hour(timeEpoch: $timeEpoch, time: $time, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windchillC: $windchillC, windchillF: $windchillF, heatindexC: $heatindexC, heatindexF: $heatindexF, dewpointC: $dewpointC, dewpointF: $dewpointF, willItRain: $willItRain, chanceOfRain: $chanceOfRain, willItSnow: $willItSnow, chanceOfSnow: $chanceOfSnow, visKm: $visKm, visMiles: $visMiles, gustMph: $gustMph, gustKph: $gustKph, uv: $uv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hour &&
            (identical(other.timeEpoch, timeEpoch) ||
                other.timeEpoch == timeEpoch) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.pressureIn, pressureIn) ||
                other.pressureIn == pressureIn) &&
            (identical(other.precipMm, precipMm) ||
                other.precipMm == precipMm) &&
            (identical(other.precipIn, precipIn) ||
                other.precipIn == precipIn) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslikeC, feelslikeC) ||
                other.feelslikeC == feelslikeC) &&
            (identical(other.feelslikeF, feelslikeF) ||
                other.feelslikeF == feelslikeF) &&
            (identical(other.windchillC, windchillC) ||
                other.windchillC == windchillC) &&
            (identical(other.windchillF, windchillF) ||
                other.windchillF == windchillF) &&
            (identical(other.heatindexC, heatindexC) ||
                other.heatindexC == heatindexC) &&
            (identical(other.heatindexF, heatindexF) ||
                other.heatindexF == heatindexF) &&
            (identical(other.dewpointC, dewpointC) ||
                other.dewpointC == dewpointC) &&
            (identical(other.dewpointF, dewpointF) ||
                other.dewpointF == dewpointF) &&
            (identical(other.willItRain, willItRain) ||
                other.willItRain == willItRain) &&
            (identical(other.chanceOfRain, chanceOfRain) ||
                other.chanceOfRain == chanceOfRain) &&
            (identical(other.willItSnow, willItSnow) ||
                other.willItSnow == willItSnow) &&
            (identical(other.chanceOfSnow, chanceOfSnow) ||
                other.chanceOfSnow == chanceOfSnow) &&
            (identical(other.visKm, visKm) || other.visKm == visKm) &&
            (identical(other.visMiles, visMiles) ||
                other.visMiles == visMiles) &&
            (identical(other.gustMph, gustMph) || other.gustMph == gustMph) &&
            (identical(other.gustKph, gustKph) || other.gustKph == gustKph) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        timeEpoch,
        time,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        windchillC,
        windchillF,
        heatindexC,
        heatindexF,
        dewpointC,
        dewpointF,
        willItRain,
        chanceOfRain,
        willItSnow,
        chanceOfSnow,
        visKm,
        visMiles,
        gustMph,
        gustKph,
        uv
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourCopyWith<_$_Hour> get copyWith =>
      __$$_HourCopyWithImpl<_$_Hour>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourToJson(
      this,
    );
  }
}

abstract class _Hour extends Hour {
  factory _Hour(
      {required final int timeEpoch,
      required final DateTime time,
      required final double tempC,
      required final double tempF,
      required final int isDay,
      required final Condition condition,
      required final double windMph,
      required final double windKph,
      required final int windDegree,
      required final String windDir,
      required final double pressureMb,
      required final double pressureIn,
      required final double precipMm,
      required final double precipIn,
      required final int humidity,
      required final int cloud,
      required final double feelslikeC,
      required final double feelslikeF,
      required final double windchillC,
      required final double windchillF,
      required final double heatindexC,
      required final double heatindexF,
      required final double dewpointC,
      required final double dewpointF,
      required final int willItRain,
      required final int chanceOfRain,
      required final int willItSnow,
      required final int chanceOfSnow,
      required final double visKm,
      required final double visMiles,
      required final double gustMph,
      required final double gustKph,
      required final double uv}) = _$_Hour;
  _Hour._() : super._();

  factory _Hour.fromJson(Map<String, dynamic> json) = _$_Hour.fromJson;

  @override
  int get timeEpoch;
  @override
  DateTime get time;
  @override
  double get tempC;
  @override
  double get tempF;
  @override
  int get isDay;
  @override
  Condition get condition;
  @override
  double get windMph;
  @override
  double get windKph;
  @override
  int get windDegree;
  @override
  String get windDir;
  @override
  double get pressureMb;
  @override
  double get pressureIn;
  @override
  double get precipMm;
  @override
  double get precipIn;
  @override
  int get humidity;
  @override
  int get cloud;
  @override
  double get feelslikeC;
  @override
  double get feelslikeF;
  @override
  double get windchillC;
  @override
  double get windchillF;
  @override
  double get heatindexC;
  @override
  double get heatindexF;
  @override
  double get dewpointC;
  @override
  double get dewpointF;
  @override
  int get willItRain;
  @override
  int get chanceOfRain;
  @override
  int get willItSnow;
  @override
  int get chanceOfSnow;
  @override
  double get visKm;
  @override
  double get visMiles;
  @override
  double get gustMph;
  @override
  double get gustKph;
  @override
  double get uv;
  @override
  @JsonKey(ignore: true)
  _$$_HourCopyWith<_$_Hour> get copyWith => throw _privateConstructorUsedError;
}
