import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/cache/shared_preferences_provider.dart';
import 'package:weather_app/logger.dart';

/// copyright: @masreplay :)

/// Cache [State] as Json and reload it when app starts
/// Used to save object in [SharedPreferences]
///
/// - [toJson] convert [State] to [Map<String, dynamic>]
/// - [fromJson] convert [Map<String, dynamic>] to [State]
/// - [jsonEncode] convert [Map<String, dynamic>] to [String]
/// - [jsonDecode] convert [String] to [Map<String, dynamic>]
/// - [update] update [State] and provide the old [State] and then cache it
/// - [updateValue] update [State] cache the new [State] directly
/// - [firstBuild] return the cached [State] or fallback
mixin PersistanceProviderMixin<State extends Object>
    on AutoDisposeNotifier<State> {
  @protected
  String get key;

  Map<String, dynamic> toJson(State value);

  State fromJson(Map<String, dynamic> map);

  String jsonEncode(Map<String, dynamic> data) => json.encode(data);

  Map<String, dynamic> jsonDecode(String raw) =>
      json.decode(raw) as Map<String, dynamic>;

  Future<State> updateValue(State state) => update((_) => state);

  Future<State> update(State Function(State state) changed) async {
    final State value = changed(state);
    try {
      final jsonData = toJson(value);
      final raw = jsonEncode(jsonData);
      await ref.read(sharedPreferencesProvider).setString(key, raw);
      logger.i(jsonData);
      return state = value;
    } catch (e, stackTrace) {
      log("Preference: $key", error: e, stackTrace: stackTrace);
      return state;
    }
  }

  State firstBuild(State fallback) {
    final raw = ref.read(sharedPreferencesProvider).getString(key);
    if (raw == null) return fallback;
    try {
      log(raw.toString());
      final Map<String, dynamic> map = jsonDecode(raw);
      return fromJson(map);
    } catch (e, stackTrace) {
      log("Preference: $key", error: e, stackTrace: stackTrace);
      return fallback;
    }
  }
}

// Same as [PersistanceProviderMixin] but with nullable [State]
mixin PersistanceNullableProviderMixin<State extends Object?>
    on AutoDisposeNotifier<State> {
  @protected
  String get key;

  /// Using [covariant] to force the state to not be nullable
  Map<String, dynamic> toJson(covariant State value);

  State fromJson(Map<String, dynamic> map);

  String jsonEncode(Map<String, dynamic> data) => json.encode(data);

  Map<String, dynamic> jsonDecode(String raw) =>
      json.decode(raw) as Map<String, dynamic>;

  Future<State?> updateValue(State? state) => update((_) => state);

  Future<State?> update(State? Function(State? state) changed) async {
    final State? value = changed(state);
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    if (value == null) {
      sharedPreferences.remove(key);
      return null;
    }
    try {
      final jsonData = toJson(value);
      final raw = jsonEncode(jsonData);
      await sharedPreferences.setString(key, raw);
      logger.i(jsonData);
      return state = value;
    } catch (e, stackTrace) {
      log("Nullable Preference: $key", error: e, stackTrace: stackTrace);
      return state;
    }
  }

  State? firstBuild() {
    final raw = ref.read(sharedPreferencesProvider).getString(key);
    if (raw == null) return null;
    try {
      log(raw.toString());
      final Map<String, dynamic> map = jsonDecode(raw);
      return fromJson(map);
    } catch (e, stackTrace) {
      log("Preference: $key", error: e, stackTrace: stackTrace);
      return null;
    }
  }
}
