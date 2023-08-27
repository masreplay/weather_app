// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchQueries _$$_SearchQueriesFromJson(Map<String, dynamic> json) =>
    _$_SearchQueries(
      q: json['q'] as String?,
    );

Map<String, dynamic> _$$_SearchQueriesToJson(_$_SearchQueries instance) =>
    <String, dynamic>{
      'q': instance.q,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _SearchClient implements SearchClient {
  _SearchClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://api.weatherapi.com/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Place>> search(SearchQueries queries) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<Place>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/search.json',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) => Place.fromJson(i as Map<String, dynamic>))
        .toList();
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
