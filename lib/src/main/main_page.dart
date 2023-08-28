import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/main/sliver_header.dart';
import 'package:weather_app/src/main/forecast_provider.dart';
import 'package:weather_app/src/widgets/flex_padded.dart';
import 'package:weather_app/theme.dart';

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
    final provider = forecastProviderProvider;

    final routes = _getRoutes(context);

    return AutoTabsRouter.tabBar(
      routes: [for (final route in routes) route.route],
      builder: (context, child, _) {
        final router = AutoTabsRouter.of(context);

        return Scaffold(
          body: RefreshIndicator(
            onRefresh: () => ref.refresh(provider.future),
            child: CustomScrollView(
              controller: controller,
              slivers: [
                SliverHeader(
                  router: router,
                  controller: controller,
                  routes: routes,
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: NavigationTabsDelegate(
                    router: router,
                    routes: routes,
                  ),
                ),
                SliverFillRemaining(
                  child: child,
                ),
                // child,
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

class NavigationTabsDelegate extends SliverPersistentHeaderDelegate {
  final List<TabRoute> routes;
  final TabsRouter router;

  const NavigationTabsDelegate({
    required this.routes,
    required this.router,
  });

  @override
  Widget build(context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.medium,
        vertical: Insets.small,
      ),
      child: RowPadded(
        gap: Insets.medium,
        children: List.generate(routes.length, (index) {
          final route = routes[index];
          return Expanded(
            child: TabButton(
              selected: router.activeIndex == index,
              text: route.label,
              onTap: () {
                router.setActiveIndex(index);
              },
            ),
          );
        }),
      ),
    );
  }

  @override
  double get maxExtent => 72;

  @override
  double get minExtent => 72;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
