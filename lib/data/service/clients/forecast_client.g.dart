// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastQueries _$$_ForecastQueriesFromJson(Map<String, dynamic> json) =>
    _$_ForecastQueries(
      q: json['q'] as String?,
      days: json['days'] as int? ?? 5,
    );

Map<String, dynamic> _$$_ForecastQueriesToJson(_$_ForecastQueries instance) =>
    <String, dynamic>{
      'q': instance.q,
      'days': instance.days,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ForecastClient implements ForecastClient {
  _ForecastClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://api.weatherapi.com/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Forecast> getCurrentForecast(ForecastQueries queries) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Forecast>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/forecast.json',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Forecast.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$forecastClientHash() => r'c8cbd51c67da42c62d73c7cedf232c5d9775545f';

/// See also [forecastClient].
@ProviderFor(forecastClient)
final forecastClientProvider = AutoDisposeProvider<ForecastClient>.internal(
  forecastClient,
  name: r'forecastClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$forecastClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ForecastClientRef = AutoDisposeProviderRef<ForecastClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
