import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/main/search/search_page.dart';

extension on ScrollMetrics {
  // if x the space between the expanded height and the collapsed height is scrolled
  bool isScrolled({
    required double amount,
    required double min,
    required double max,
  }) =>
      pixels >= (max - min) * amount;
}

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // records
    final routes = [
      (
        route: const TodayWeatherRoute(),
        icon: Icons.wb_sunny,
        label: 'Today',
      ),
      (
        route: const TomorrowWeatherRoute(),
        icon: Icons.wb_cloudy,
        label: 'Tomorrow',
      ),
      (
        route: const ForecastWeatherRoute(),
        icon: Icons.wb_sunny_outlined,
        label: 'Forecast',
      ),
    ];

    return AutoTabsRouter.tabBar(
      routes: [for (final route in routes) route.route],
      builder: (context, child, controller) {
        final router = AutoTabsRouter.of(context);

        return HookConsumer(
          builder: (context, ref, child) {
            final theme = Theme.of(context);

            final scrolledTo = useState(false);
            final collapsedHeight = MediaQuery.sizeOf(context).height / 4;
            final expandedHeight = MediaQuery.sizeOf(context).height / 2;

            const borderRadius = BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            );

            final List<Widget> tabs = List.generate(routes.length, (index) {
              final route = routes[index];
              return TabButton(
                text: Text(route.label),
                selected: router.activeIndex == index,
              );
            });

            return Scaffold(
              body: NotificationListener(
                onNotification: (notification) {
                  if (notification is ScrollUpdateNotification) {
                    scrolledTo.value = notification.metrics.isScrolled(
                      amount: 2 / 3,
                      max: expandedHeight,
                      min: collapsedHeight,
                    );
                  }

                  return true;
                },
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      foregroundColor: scrolledTo.value
                          ? theme.colorScheme.onSurface
                          : Colors.white,
                      pinned: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: borderRadius,
                      ),
                      actions: const [],
                      title: const SearchAppBar(),
                      collapsedHeight: collapsedHeight,
                      expandedHeight: expandedHeight,
                      flexibleSpace: ClipRRect(
                        borderRadius: borderRadius,
                        child: FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          background: Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: borderRadius,
                                  child: Assets.hour.night.image(
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(16),
                              Row(children: tabs)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SliverFillRemaining(
                      child: child,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class TabButton extends StatelessWidget {
  final Text text;
  final bool selected;

  const TabButton({
    super.key,
    required this.text,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTextStyle(
      style: theme.textTheme.labelLarge!.copyWith(
        color: selected
            ? theme.colorScheme.onSurface
            : theme.colorScheme.onSecondaryContainer,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: selected
              ? theme.colorScheme.secondaryContainer
              : theme.colorScheme.surface,
        ),
        child: text,
      ),
    );
  }
}
