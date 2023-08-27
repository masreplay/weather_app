import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/main/flex_padded.dart';
import 'package:weather_app/src/main/search/search_page.dart';
import 'package:weather_app/src/main/today_weather/localization.dart';
import 'package:weather_app/src/main/today_weather/today_weather_provider.dart';
import 'package:weather_app/src/settings/settings_provider.dart';
import 'package:weather_app/theme.dart';

const _expandedBorderRadius = BorderRadius.only(
  bottomLeft: Radius.circular(36),
  bottomRight: Radius.circular(36),
);

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
              selected: router.activeIndex == index,
              text: Text(route.label),
              onTap: () => router.setActiveIndex(index),
            ),
          );
        });

        return HookConsumer(
          builder: (context, ref, _) {
            final scrolledTo = useState(false);
            final settings = ref.watch(settingsPreferenceProvider);
            final collapsedHeight = MediaQuery.sizeOf(context).height / 5;
            final expandedHeight = MediaQuery.sizeOf(context).height / 2;

            final textColor =
                scrolledTo.value ? theme.colorScheme.onSurface : Colors.white;

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
                          borderRadius: _expandedBorderRadius,
                        ),
                        actions: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.settings),
                          )
                        ],
                        title: SearchAppBar(
                          foregroundColor: textColor,
                        ),
                        collapsedHeight: collapsedHeight,
                        expandedHeight: expandedHeight,
                        flexibleSpace: ClipRRect(
                          borderRadius: _expandedBorderRadius,
                          child: FlexibleSpaceBar(
                            collapseMode: CollapseMode.parallax,
                            background: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      CurrentDaySection(
                                        unitType: settings.unitType,
                                        foregroundColor: textColor,
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

class CurrentDaySection extends ConsumerWidget {
  const CurrentDaySection({
    super.key,
    required this.unitType,
    required this.foregroundColor,
  });

  final UnitType unitType;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: _expandedBorderRadius,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(Assets.hour.night.path),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(
              color: foregroundColor.withOpacity(0.0),
            ),
          ),
        ),
      ),
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
    final textTheme = theme.textTheme;

    final mediumTextStyle = textTheme.titleMedium!.copyWith(
      color: foregroundColor,
      fontWeight: FontWeight.bold,
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.medium,
          vertical: Insets.large,
        ).add(const EdgeInsets.only(top: kToolbarHeight)),
        child: state.maybeWhen(
          data: (data) {
            if (data == null) return const SizedBox.shrink();

            final day = data.forecast.forecastday.first.day;
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
                            unitType,
                            data.current.getTemperature,
                          ),
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
                            style: textTheme.titleLarge!.copyWith(
                              color: foregroundColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                RowPadded(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        data.location.localTimeFormatted,
                        style: mediumTextStyle,
                      ),
                    ),
                    ColumnPadded(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${l10n.max} ${l10n.temperature(unitType, day.maxTemperature)}",
                          style: mediumTextStyle,
                        ),
                        Text(
                          "${l10n.min} ${l10n.temperature(unitType, day.minTemperature)}",
                          style: mediumTextStyle,
                        ),
                      ],
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
