import 'package:flutter/services.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/settings/settings_provider.dart';

import 'theme.dart';

class MainApp extends StatefulHookConsumerWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    /// Cache assets before app start
    final images = [
      Assets.hour.night,
      Assets.hour.day,
    ];

    for (var image in images) {
      precacheImage(AssetImage(image.path), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    const theme = AppTheme();

    /// Force repaint the entire tree when change
    final settings = ref.watch(settingsPreferenceProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      theme: theme.buildLight(),
      darkTheme: theme.buildDark(),
      locale: settings.locale,
      themeMode: settings.themeMode,
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
