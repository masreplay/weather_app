// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map<String, dynamic> json) =>
    _$_AppSettings(
      locale: _$JsonConverterFromJson<String, Locale>(
          json['locale'], const LocaleJsonConverter().fromJson),
      themeMode: json['themeMode'] == null
          ? ThemeMode.system
          : const ThemeModeJsonConvertor()
              .fromJson(json['themeMode'] as String),
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'locale': _$JsonConverterToJson<String, Locale>(
          instance.locale, const LocaleJsonConverter().toJson),
      'themeMode': const ThemeModeJsonConvertor().toJson(instance.themeMode),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsPreferenceHash() =>
    r'eaee9f606977f772d7a60f6d68fec504ced914cc';

/// See also [SettingsPreference].
@ProviderFor(SettingsPreference)
final settingsPreferenceProvider =
    AutoDisposeNotifierProvider<SettingsPreference, AppSettings>.internal(
  SettingsPreference.new,
  name: r'settingsPreferenceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$settingsPreferenceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SettingsPreference = AutoDisposeNotifier<AppSettings>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
