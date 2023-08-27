import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/main.dart';

part 'shared_preferences_provider.g.dart';

/// Eager Loading from [main]
/// Initialize [SharedPreferences] instance
@riverpod
SharedPreferences sharedPreferences(SharedPreferencesRef ref) =>
    throw UnimplementedError();
