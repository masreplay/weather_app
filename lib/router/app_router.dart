import 'package:auto_route/auto_route.dart';
import 'package:weather_app/src/main/forecast_weather/forecast_weather_page.dart';
import 'package:weather_app/src/main/main_page.dart';
import 'package:weather_app/src/main/search/search_page.dart';
import 'package:weather_app/src/main/today_weather/today_weather_page.dart';
import 'package:weather_app/src/main/tomorrow_weather/tomorrow_weather_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return <AutoRoute>[
      AutoRoute(
        page: MainRoute.page,
        initial: true,
        children: [
          AutoRoute(
            page: TodayWeatherRoute.page,
            initial: true,
          ),
          AutoRoute(
            page: TomorrowWeatherRoute.page,
            path: "tomorrow",
          ),
          AutoRoute(
            page: ForecastWeatherRoute.page,
            path: "forecast",
          ),
        ],
      ),
      AutoRoute(
        page: SearchRoute.page,
        path: "/search",
      ),
    ];
  }
}
