import 'package:weather_app/common_lib.dart';
import 'package:weather_app/router/app_router.dart';

import 'theme.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    const theme = AppTheme();
    
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: theme.buildLight(),
      darkTheme: theme.buildDark(),
      locale: const Locale('ar'),
      themeMode: ThemeMode.dark,
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
