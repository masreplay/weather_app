import '_clients.dart';

part 'search_client.freezed.dart';
part 'search_client.g.dart';

@RestApi(baseUrl: "http://api.weatherapi.com/v1")
abstract class SearchClient {
  factory SearchClient(Dio dio, {String baseUrl}) = _SearchClient;

  @GET("/search.json")
  Future<List<Place>> search(@Queries() SearchQueries queries);
}

@freezed
class SearchQueries with _$SearchQueries {
  @JsonSerializable(explicitToJson: true)
  factory SearchQueries({
    // London
    String? q,
  }) = _SearchQueries;

  factory SearchQueries.fromJson(Map<String, dynamic> json) =>
      _$SearchQueriesFromJson(json);
}
