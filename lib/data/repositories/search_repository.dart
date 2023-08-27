import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/service/service.dart';

part 'search_repository.g.dart';

/// dependency injection for the repository [SearchRepository]
@riverpod
SearchRepository searchRepository(SearchRepositoryRef ref) =>
    SearchRepository(ref.read(searchClientProvider));

// The repository pattern may feel redundant
// but it's used for caching and storing in the local database
// and other use cases for example changing the data schema
class SearchRepository {
  const SearchRepository(this._client);

  final SearchClient _client;

  Future<List<Place>> search(SearchQueries queries) => _client.search(queries);
}
