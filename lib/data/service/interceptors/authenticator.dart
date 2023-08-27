import 'package:dio/dio.dart';

/// it's better to pass it form the environment variables
/// never use .env file because it's not safe in flutter
/// use passing parameters to dart run command
const String _apiKey = "9703752ab8eb4ed78af75607232508";

class Authenticator extends Interceptor {
  Authenticator();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.queryParameters.addAll({"key": _apiKey});
    return super.onRequest(options, handler);
  }
}
