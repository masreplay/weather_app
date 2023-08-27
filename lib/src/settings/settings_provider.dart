import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/cache/preferences.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/riverpod/persistance_provider.dart';

part 'settings_provider.freezed.dart';
part 'settings_provider.g.dart';

/// [SettingsPreference] is a [StateNotifierProvider] that holds [AppSettings]
@freezed
class AppSettings with _$AppSettings {
  const AppSettings._();

  @JsonSerializable(explicitToJson: true)
  factory AppSettings({
    @Default(UnitSystem.metric) UnitSystem unitSystem,
    @LocaleJsonConverter() Locale? locale,
    @ThemeModeJsonConvertor() @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

/// Cache [AppSettings] as Json and reload it when app starts
///
/// with the help of [PersistanceProvider]
@riverpod
class SettingsPreference extends _$SettingsPreference
    with PersistanceProviderMixin {
  @override
  @protected
  String get key => Preferences.settings;

  @override
  AppSettings fromJson(Map<String, dynamic> map) => AppSettings.fromJson(map);

  @override
  Map<String, dynamic> toJson(AppSettings value) => value.toJson();

  @override
  AppSettings build() => firstBuild(AppSettings());

  /// Never pass [BuildContext] to riverpod so it's better to do like this
  ///
  /// Example:
  /// ```
  /// toggleThemeMode(MediaQuery.platformBrightnessOf(context));
  /// ```
  Future<AppSettings> toggleThemeMode(Brightness brightness) {
    final newThemeMode = switch (state.themeMode) {
      ThemeMode.system =>
        brightness == Brightness.dark ? ThemeMode.light : ThemeMode.dark,
      ThemeMode.light => ThemeMode.dark,
      ThemeMode.dark => ThemeMode.light
    };

    return updateValue(state.copyWith(themeMode: newThemeMode));
  }

  Future<AppSettings> setLocale(Locale? locale) =>
      updateValue(state.copyWith(locale: locale));
}

/// Convert [Locale] to [String] and vice versa
///
/// Only language code is saved, en
/// ignore the country code, US
class LocaleJsonConverter extends JsonConverter<Locale, String> {
  const LocaleJsonConverter();

  @override
  Locale fromJson(String json) => Locale(json);

  @override
  String toJson(Locale object) => object.toString().split("_").first;
}

/// Convert [ThemeMode] to [String] and vice versa
class ThemeModeJsonConvertor extends JsonConverter<ThemeMode, String> {
  const ThemeModeJsonConvertor();

  @override
  ThemeMode fromJson(String json) => switch (json) {
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.system
      };

  @override
  String toJson(ThemeMode object) => object.name;
}
