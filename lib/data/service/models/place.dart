import '_models.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  @JsonSerializable()
  factory Place({
    required Id id,
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String url,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
