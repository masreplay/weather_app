import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/l10n/localization.dart';
import 'package:weather_app/router/app_router.dart';
import 'package:weather_app/src/main/main_page.dart';
import 'package:weather_app/src/main/search/search_page.dart';
import 'package:weather_app/src/main/forecast_provider.dart';
import 'package:weather_app/src/settings/settings_provider.dart';
import 'package:weather_app/src/widgets/flex_padded.dart';
import 'package:weather_app/theme.dart';

const _expandedBorderRadius = BorderRadius.only(
  bottomLeft: Radius.circular(36),
  bottomRight: Radius.circular(36),
);

/// Represents the header of the [MainPage].
class SliverHeader extends HookConsumerWidget {
  const SliverHeader({
    super.key,
    required this.router,
    required this.routes,
    required this.controller,
  });

  final TabsRouter router;
  final ScrollController controller;
  final List<TabRoute> routes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrolledTo = useState(false);

    final size = MediaQuery.sizeOf(context);

    controller.addListener(() {
      scrolledTo.value = controller.position.isScrolledTo(
        amount: 0.5,
        min: controller.position.minScrollExtent,
        max: controller.position.maxScrollExtent,
      );
    });

    final settings = ref.watch(settingsPreferenceProvider);

    final theme = Theme.of(context);

    final textColor =
        scrolledTo.value ? theme.colorScheme.onSurface : Colors.white;

    return SliverAppBar(
      foregroundColor: textColor,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {
            context.router.push(const SettingsRoute());
          },
          icon: const Icon(Icons.settings),
        )
      ],
      title: SearchAppBar(foregroundColor: textColor),
      expandedHeight: size.height / 2,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            CurrentDaySection(
              unitSystem: settings.unitSystem,
              foregroundColor: textColor,
            ),
            CurrentWeatherSection(
              unitSystem: settings.unitSystem,
              foregroundColor: textColor,
            ),
          ],
        ),
      ),
    );
  }
}

class CurrentDaySection extends ConsumerWidget {
  const CurrentDaySection({
    super.key,
    required this.unitSystem,
    required this.foregroundColor,
  });

  final UnitSystem unitSystem;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = forecastProviderProvider;
    final state = ref.watch(provider);
    return ClipRRect(
      borderRadius: _expandedBorderRadius,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(
              state.maybeWhen(
                data: (data) {
                  return data.current.isDay == 0
                      ? Assets.hour.night.path
                      : Assets.hour.day.path;
                },
                orElse: () => Assets.hour.night.path,
              ),
            ),
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
  bool isScrolledTo({
    required double amount,
    required double min,
    required double max,
  }) =>
      pixels >= (max - min) * amount;
}

class TabButton extends StatelessWidget {
  final String text;
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
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected
                ? theme.colorScheme.primary
                : theme.colorScheme.surfaceVariant,
            borderRadius: borderRadius,
          ),
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

class CurrentWeatherSection extends ConsumerWidget {
  const CurrentWeatherSection({
    super.key,
    required this.unitSystem,
    required this.foregroundColor,
  });

  final UnitSystem unitSystem;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = forecastProviderProvider;
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
            final day = data.forecast.forecastday.first.day;

            return ColumnPadded(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          l10n.temperature(
                            unitSystem,
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
                            child: CachedNetworkImage(
                              imageUrl: data.current.condition.getImage(),
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
                        data.location.getLocalTimeFormatted(l10n.localeName),
                        style: mediumTextStyle,
                      ),
                    ),
                    ColumnPadded(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${l10n.max} ${l10n.temperature(unitSystem, day.maxTemperature)}",
                          style: mediumTextStyle,
                        ),
                        Text(
                          "${l10n.min} ${l10n.temperature(unitSystem, day.minTemperature)}",
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
