import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/main/sliver_header.dart';
import 'package:weather_app/src/main/today_weather/today_weather_provider.dart';

typedef TabRoute = ({
  IconData icon,
  String label,
  PageRouteInfo<void> route,
});

@RoutePage()
class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();

    final routes = _getRoutes(context);

    return AutoTabsRouter.tabBar(
      routes: [for (final route in routes) route.route],
      builder: (context, child, _) {
        final router = AutoTabsRouter.of(context);

        return Scaffold(
          body: RefreshIndicator(
            onRefresh: () => ref.refresh(getTodayForecastProvider.future),
            child: CustomScrollView(
              controller: controller,
              slivers: [
                SliverHeader(
                  router: router,
                  controller: controller,
                  routes: routes,
                ),
                SliverFillRemaining(
                  child: child,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List<TabRoute> _getRoutes(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return [
      (
        route: const TodayWeatherRoute(),
        icon: Icons.wb_sunny,
        label: l10n.today,
      ),
      (
        route: const TomorrowWeatherRoute(),
        icon: Icons.wb_cloudy,
        label: l10n.tomorrow,
      ),
      (
        route: const ForecastWeatherRoute(),
        icon: Icons.wb_sunny_outlined,
        label: l10n.forecast,
      ),
    ];
  }
}
