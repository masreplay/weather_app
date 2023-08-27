// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map<String, dynamic> json) =>
    _$_AppSettings(
      unitSystem: json['unitSystem'] == null
          ? UnitSystem.metric
          : UnitSystem.fromJson(json['unitSystem'] as String),
      locale: _$JsonConverterFromJson<String, Locale>(
          json['locale'], const LocaleJsonConverter().fromJson),
      themeMode: json['themeMode'] == null
          ? ThemeMode.system
          : const ThemeModeJsonConvertor()
              .fromJson(json['themeMode'] as String),
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'unitSystem': instance.unitSystem.toJson(),
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
    r'7b31c5da6bf6ae71d850e74b97d40b2099c6f19a';

/// Cache [AppSettings] as Json and reload it when app starts
///
/// with the help of [PersistanceProvider]
///
/// Copied from [SettingsPreference].
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
