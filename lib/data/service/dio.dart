import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/data/service/interceptors/authenticator.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();

  dio.interceptors.addAll([
    Authenticator(),
  ]);

  return dio;
}
