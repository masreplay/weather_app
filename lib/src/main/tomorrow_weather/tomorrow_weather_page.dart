import 'package:weather_app/common_lib.dart';

@RoutePage()
class TomorrowWeatherPage extends StatefulWidget {
  const TomorrowWeatherPage({super.key});

  @override
  State<TomorrowWeatherPage> createState() => _TomorrowWeatherPageState();
}

class _TomorrowWeatherPageState extends State<TomorrowWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Card(
            child: SizedBox(
              height: 100,
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}
