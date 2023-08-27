import 'dart:ui';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/date_time.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/main/flex_padded.dart';
import 'package:weather_app/src/main/search/search_page.dart';
import 'package:weather_app/src/main/today_weather/localization.dart';
import 'package:weather_app/src/main/today_weather/today_weather_provider.dart';
import 'package:weather_app/src/settings/settings_provider.dart';
import 'package:weather_app/theme.dart';

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
            final settings = ref.watch(settingsPreferenceProvider);
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
                child: RefreshIndicator(
                  onRefresh: () => ref.refresh(getTodayForecastProvider.future),
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
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipRRect(
                                          borderRadius: borderRadius,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: ExactAssetImage(
                                                    Assets.hour.night.path),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.background
                                                      .withOpacity(0.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      CurrentWeatherSection(
                                        unitType: settings.unitType,
                                        foregroundColor: textColor,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: Insets.medium,
                                    vertical: Insets.small,
                                  ),
                                  child: RowPadded(
                                    gap: Insets.medium,
                                    children: tabs,
                                  ),
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
            ? theme.colorScheme.onPrimary
            : theme.colorScheme.onSurfaceVariant,
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.medium,
            vertical: Insets.medium,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected
                ? theme.colorScheme.primary
                : theme.colorScheme.surfaceVariant,
            borderRadius: borderRadius,
          ),
          child: text,
        ),
      ),
    );
  }
}

class CurrentWeatherSection extends ConsumerWidget {
  const CurrentWeatherSection({
    super.key,
    required this.unitType,
    required this.foregroundColor,
  });

  final UnitType unitType;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = getTodayForecastProvider;
    final state = ref.watch(provider);
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.medium,
          vertical: Insets.large,
        ).add(const EdgeInsets.only(top: kToolbarHeight)),
        child: state.maybeWhen(
          data: (data) {
            if (data == null) return const SizedBox.shrink();

            return Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          l10n.temperature(
                              unitType, data.current.getTemperature),
                          style: GoogleFonts.jetBrainsMono(
                            color: foregroundColor,
                            fontSize: 64,
                          ),
                        ),
                      ),
                      ColumnPadded(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: foregroundColor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              data.current.condition.image(),
                              height: 72,
                              width: 72,
                            ),
                          ),
                          Text(
                            data.current.condition.text,
                            style: theme.textTheme.titleLarge!.copyWith(
                              color: foregroundColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${data.location.localtime.format()} ${data.location.localtime.formatDOW()}",
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: foregroundColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          orElse: SizedBox.shrink,
        ),
      ),
    );
  }
}
