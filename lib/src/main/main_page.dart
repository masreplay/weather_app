import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/main/flex_padded.dart';
import 'package:weather_app/src/main/search/search_page.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
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
    final theme = Theme.of(context);

    return AutoTabsRouter.tabBar(
      routes: [for (final route in routes) route.route],
      builder: (context, child, controller) {
        final router = AutoTabsRouter.of(context);

        final tabs = List.generate(routes.length, (index) {
          final route = routes[index];
          return Expanded(
            child: TabButton(
              onTap: () {
                router.setActiveIndex(index);
              },
              text: Text(route.label),
              selected: router.activeIndex == index,
            ),
          );
        });

        return HookConsumer(
          builder: (context, ref, _) {
            final scrolledTo = useState(false);
            final collapsedHeight = MediaQuery.sizeOf(context).height / 4;
            final expandedHeight = MediaQuery.sizeOf(context).height / 2;

            final textColor =
                scrolledTo.value ? theme.colorScheme.onSurface : Colors.white;

            const borderRadius = BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            );

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
                      foregroundColor: textColor,
                      pinned: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: borderRadius,
                      ),
                      title: SearchAppBar(
                        foregroundColor: textColor,
                      ),
                      collapsedHeight: collapsedHeight,
                      expandedHeight: expandedHeight,
                      flexibleSpace: ClipRRect(
                        borderRadius: borderRadius,
                        child: FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          background: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: borderRadius,
                                  child: Assets.hour.night.image(
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: RowPadded(children: tabs),
                              )
                            ],
                          ),
                        ),
                      ),
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
      },
    );
  }
}

extension on ScrollMetrics {
  // if x the space between the expanded height and the collapsed height is scrolled
  bool isScrolled({
    required double amount,
    required double min,
    required double max,
  }) =>
      pixels >= (max - min) * amount;
}

class TabButton extends StatelessWidget {
  final Text text;
  final bool selected;
  final VoidCallback onTap;

  const TabButton({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(12);

    return DefaultTextStyle(
      style: theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        color: selected
            ? theme.colorScheme.onSecondaryContainer
            : theme.colorScheme.onSurface,
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected
                ? theme.colorScheme.secondaryContainer
                : theme.colorScheme.surface,
            borderRadius: borderRadius,
          ),
          child: text,
        ),
      ),
    );
  }
}
