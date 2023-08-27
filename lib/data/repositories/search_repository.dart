import 'package:weather_app/data/service/service.dart';

class SearchRepository {
  const SearchRepository(this._client);

  final SearchClient _client;

  Future<List<Place>> search(SearchQueries queries) => _client.search(queries);
}
