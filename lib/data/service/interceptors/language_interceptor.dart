import 'package:dio/dio.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/src/settings/settings_provider.dart';

class LanguageInterceptor extends Interceptor {
  LanguageInterceptor(this.ref);

  final Ref ref;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String? language =
        ref.read(settingsPreferenceProvider).locale?.languageCode;

    options.queryParameters.addAll({
      "lang": language ?? "en",
    });
    return super.onRequest(options, handler);
  }
}
