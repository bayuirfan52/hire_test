import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hire_test/app/data/remote/error_intercepor_handling.dart';
import 'package:hire_test/app/data/remote/outcome.dart';
import 'package:hire_test/app/helper/preference_helper.dart';

class HttpService extends GetxService {
  final String baseUrl;
  final Map<String, String>? baseHeaders;
  final Duration timeout;
  final _dio = Dio();

  HttpService({required this.baseUrl, this.baseHeaders, required this.timeout});

  @override
  void onInit() {
    _dio.options.baseUrl = baseUrl;
    _dio.options.headers = baseHeaders;
    _dio.options.receiveTimeout = timeout;
    _dio.options.connectTimeout = timeout;
    _dio.options.maxRedirects = 3;
    _dio.interceptors.add(LogInterceptor(request: kDebugMode, requestHeader: kDebugMode, responseBody: kDebugMode));
    super.onInit();
  }

  Future<void> _handleToken(bool withToken) async {
    if (withToken) {
      _dio.options.headers.addEntries([MapEntry('Authorization', 'Bearer ${PreferenceHelper.getUserToken()}')]);
    }
  }

  Future<Outcome> httpDelete({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool withToken = false,
  }) async {
    final result = Outcome();
    _handleToken(withToken);

    if (headers != null) _dio.options.headers.addAll(headers);
    try {
    var response = await _dio.delete(endpoint, data: body);
      result.body = response.data;
      result.statusCode = response.statusCode;
      result.isFailure = false;
      return result;
    } on DioException catch (e) {
      return ErrorInterceptorHandling(result: result, response: e, url: endpoint);
    }
  }

  Future<Outcome> httpPut({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool withToken = false,
  }) async {
    final result = Outcome();
    _handleToken(withToken);

    if (headers != null) _dio.options.headers.addAll(headers);
    try {
    var response = await _dio.put(endpoint, data: body);
      result.body = response.data;
      result.statusCode = response.statusCode;
      result.isFailure = false;
      return result;
    } on DioException catch (e) {
      return ErrorInterceptorHandling(result: result, response: e, url: endpoint);
    }
  }

  Future<Outcome> httpPost({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool withToken = false,
  }) async {
    final result = Outcome();
    _handleToken(withToken);

    if (headers != null) _dio.options.headers.addAll(headers);
    try {
      var response = await _dio.post(endpoint, data: body);
      result.body = response.data;
      result.statusCode = response.statusCode;
      result.isFailure = false;
      return result;
    } on DioException catch (e) {
      return ErrorInterceptorHandling(result: result, response: e, url: endpoint);
    }
  }

  Future<Outcome> httpGet({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    bool withToken = false,
  }) async {
    final result = Outcome();
    _handleToken(withToken);

    if (headers != null) _dio.options.headers.addAll(headers);
    try {
      var response = await _dio.get(endpoint, queryParameters: queryParameters);
      result.body = response.data;
      result.statusCode = response.statusCode;
      result.isFailure = false;
      return result;
    } on DioException catch (e) {
      return ErrorInterceptorHandling(result: result, response: e, url: endpoint);
    }
  }
}
