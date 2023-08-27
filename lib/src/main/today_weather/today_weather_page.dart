import 'package:weather_app/common_lib.dart';

@RoutePage()
class TodayWeatherPage extends StatefulHookConsumerWidget {
  const TodayWeatherPage({super.key});

  @override
  ConsumerState<TodayWeatherPage> createState() => _TodayWeatherPageState();
}

class _TodayWeatherPageState extends ConsumerState<TodayWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}
