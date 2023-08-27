import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/cache/preferences.dart';
import 'package:weather_app/data/service/service.dart';
import 'package:weather_app/riverpod/persistance_provider.dart';

part 'saved_place_provider.g.dart';

@riverpod
class SavedPlacePreference extends _$SavedPlacePreference
    with PersistanceNullableProviderMixin {
  @override
  @protected
  String get key => Preferences.savedPlace;

  @override
  Place? build() => firstBuild();

  @override
  Place fromJson(Map<String, dynamic> map) => Place.fromJson(map);

  @override
  Map<String, dynamic> toJson(Place value) => value.toJson();
}
