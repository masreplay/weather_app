import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/cache/shared_preferences_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MainApp(),
    ),
  );
}
