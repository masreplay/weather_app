// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastQueries _$ForecastQueriesFromJson(Map<String, dynamic> json) {
  return _ForecastQueries.fromJson(json);
}

/// @nodoc
mixin _$ForecastQueries {
// London
  String? get q => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastQueriesCopyWith<ForecastQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastQueriesCopyWith<$Res> {
  factory $ForecastQueriesCopyWith(
          ForecastQueries value, $Res Function(ForecastQueries) then) =
      _$ForecastQueriesCopyWithImpl<$Res, ForecastQueries>;
  @useResult
  $Res call({String? q, int days});
}

/// @nodoc
class _$ForecastQueriesCopyWithImpl<$Res, $Val extends ForecastQueries>
    implements $ForecastQueriesCopyWith<$Res> {
  _$ForecastQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastQueriesCopyWith<$Res>
    implements $ForecastQueriesCopyWith<$Res> {
  factory _$$_ForecastQueriesCopyWith(
          _$_ForecastQueries value, $Res Function(_$_ForecastQueries) then) =
      __$$_ForecastQueriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? q, int days});
}

/// @nodoc
class __$$_ForecastQueriesCopyWithImpl<$Res>
    extends _$ForecastQueriesCopyWithImpl<$Res, _$_ForecastQueries>
    implements _$$_ForecastQueriesCopyWith<$Res> {
  __$$_ForecastQueriesCopyWithImpl(
      _$_ForecastQueries _value, $Res Function(_$_ForecastQueries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
    Object? days = null,
  }) {
    return _then(_$_ForecastQueries(
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ForecastQueries implements _ForecastQueries {
  _$_ForecastQueries({this.q, this.days = 5});

  factory _$_ForecastQueries.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastQueriesFromJson(json);

// London
  @override
  final String? q;
  @override
  @JsonKey()
  final int days;

  @override
  String toString() {
    return 'ForecastQueries(q: $q, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastQueries &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.days, days) || other.days == days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, q, days);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastQueriesCopyWith<_$_ForecastQueries> get copyWith =>
      __$$_ForecastQueriesCopyWithImpl<_$_ForecastQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastQueriesToJson(
      this,
    );
  }
}

abstract class _ForecastQueries implements ForecastQueries {
  factory _ForecastQueries({final String? q, final int days}) =
      _$_ForecastQueries;

  factory _ForecastQueries.fromJson(Map<String, dynamic> json) =
      _$_ForecastQueries.fromJson;

  @override // London
  String? get q;
  @override
  int get days;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastQueriesCopyWith<_$_ForecastQueries> get copyWith =>
      throw _privateConstructorUsedError;
}
