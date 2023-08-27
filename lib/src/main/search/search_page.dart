import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/repositories/search_repository.dart';
import 'package:weather_app/data/service/service.dart';

part 'search_page.g.dart';

@riverpod
Future<List<Place>> search(SearchRef ref, SearchQueries queries) {
  return ref.read(searchRepositoryProvider).search(queries);
}

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
