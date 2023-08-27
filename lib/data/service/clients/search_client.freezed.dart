// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchQueries _$SearchQueriesFromJson(Map<String, dynamic> json) {
  return _SearchQueries.fromJson(json);
}

/// @nodoc
mixin _$SearchQueries {
// London
  String? get q => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchQueriesCopyWith<SearchQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueriesCopyWith<$Res> {
  factory $SearchQueriesCopyWith(
          SearchQueries value, $Res Function(SearchQueries) then) =
      _$SearchQueriesCopyWithImpl<$Res, SearchQueries>;
  @useResult
  $Res call({String? q});
}

/// @nodoc
class _$SearchQueriesCopyWithImpl<$Res, $Val extends SearchQueries>
    implements $SearchQueriesCopyWith<$Res> {
  _$SearchQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
  }) {
    return _then(_value.copyWith(
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchQueriesCopyWith<$Res>
    implements $SearchQueriesCopyWith<$Res> {
  factory _$$_SearchQueriesCopyWith(
          _$_SearchQueries value, $Res Function(_$_SearchQueries) then) =
      __$$_SearchQueriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? q});
}

/// @nodoc
class __$$_SearchQueriesCopyWithImpl<$Res>
    extends _$SearchQueriesCopyWithImpl<$Res, _$_SearchQueries>
    implements _$$_SearchQueriesCopyWith<$Res> {
  __$$_SearchQueriesCopyWithImpl(
      _$_SearchQueries _value, $Res Function(_$_SearchQueries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
  }) {
    return _then(_$_SearchQueries(
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchQueries implements _SearchQueries {
  _$_SearchQueries({this.q});

  factory _$_SearchQueries.fromJson(Map<String, dynamic> json) =>
      _$$_SearchQueriesFromJson(json);

// London
  @override
  final String? q;

  @override
  String toString() {
    return 'SearchQueries(q: $q)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchQueries &&
            (identical(other.q, q) || other.q == q));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, q);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchQueriesCopyWith<_$_SearchQueries> get copyWith =>
      __$$_SearchQueriesCopyWithImpl<_$_SearchQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchQueriesToJson(
      this,
    );
  }
}

abstract class _SearchQueries implements SearchQueries {
  factory _SearchQueries({final String? q}) = _$_SearchQueries;

  factory _SearchQueries.fromJson(Map<String, dynamic> json) =
      _$_SearchQueries.fromJson;

  @override // London
  String? get q;
  @override
  @JsonKey(ignore: true)
  _$$_SearchQueriesCopyWith<_$_SearchQueries> get copyWith =>
      throw _privateConstructorUsedError;
}
