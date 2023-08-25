import 'package:weather_app/common_lib.dart';

@RoutePage()
class ForecastWeatherPage extends StatefulWidget {
  const ForecastWeatherPage({super.key});

  @override
  State<ForecastWeatherPage> createState() => _ForecastWeatherPageState();
}

class _ForecastWeatherPageState extends State<ForecastWeatherPage> {
  @override
  Widget build(BuildContext context) {
    // search bar and tab bar
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forecast Weather'),
      ),
      body: const Placeholder(),
    );
  }
}
