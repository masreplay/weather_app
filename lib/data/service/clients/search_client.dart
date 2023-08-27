import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/service/dio.dart';

import '_clients.dart';

part 'search_client.freezed.dart';
part 'search_client.g.dart';

@riverpod
SearchClient searchClient(SearchClientRef ref) =>
    SearchClient(ref.read(dioProvider));

/// More docs at `https://www.weatherapi.com/api-explorer.aspx#search`
@RestApi(baseUrl: "http://api.weatherapi.com/v1")
abstract class SearchClient {
  factory SearchClient(Dio dio, {String baseUrl}) = _SearchClient;

  @GET("/search.json")
  Future<List<Place>> search(@Queries() SearchQueries queries);
}

/// query parameters for the search endpoint
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
