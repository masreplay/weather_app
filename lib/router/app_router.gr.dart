// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ForecastWeatherRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForecastWeatherPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    TodayWeatherRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TodayWeatherPage(),
      );
    },
    TomorrowWeatherRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TomorrowWeatherPage(),
      );
    },
  };
}

/// generated route for
/// [ForecastWeatherPage]
class ForecastWeatherRoute extends PageRouteInfo<void> {
  const ForecastWeatherRoute({List<PageRouteInfo>? children})
      : super(
          ForecastWeatherRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForecastWeatherRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TodayWeatherPage]
class TodayWeatherRoute extends PageRouteInfo<void> {
  const TodayWeatherRoute({List<PageRouteInfo>? children})
      : super(
          TodayWeatherRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodayWeatherRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TomorrowWeatherPage]
class TomorrowWeatherRoute extends PageRouteInfo<void> {
  const TomorrowWeatherRoute({List<PageRouteInfo>? children})
      : super(
          TomorrowWeatherRoute.name,
          initialChildren: children,
        );

  static const String name = 'TomorrowWeatherRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
