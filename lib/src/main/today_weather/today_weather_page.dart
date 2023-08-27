import 'package:weather_app/common_lib.dart';
import 'package:weather_app/src/main/flex_padded.dart';
import 'package:weather_app/src/main/today_weather/today_weather_provider.dart';

@RoutePage()
class TodayWeatherPage extends StatefulHookConsumerWidget {
  const TodayWeatherPage({super.key});

  @override
  ConsumerState<TodayWeatherPage> createState() => _TodayWeatherPageState();
}

class _TodayWeatherPageState extends ConsumerState<TodayWeatherPage> {
  @override
  Widget build(BuildContext context) {
    final provider = getTodayForecastProvider;
    final state = ref.watch(provider);
    return state.when(
      data: (data) {
        if (data == null) return Container();

        return ColumnPadded(
          children: [
            ListTile(
              title: Text(data.location.name),
              subtitle: Text(data.location.region),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            )
          ],
        );
      },
      error: (error, stackTrace) => ColumnPadded(
        children: [
          Text(error.toString()),
          Text(stackTrace.toString()),
        ],
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
