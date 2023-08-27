import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/data/service/interceptors/authenticator.dart';
import 'package:weather_app/data/service/interceptors/language_interceptor.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();

  dio.interceptors.addAll([
    Authenticator(),
    LanguageInterceptor(ref),
    LogInterceptor(responseBody: true),
  ]);

  return dio;
}
