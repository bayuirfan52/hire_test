// ignore_for_file: non_constant_identifier_names, always_put_control_body_on_new_line, always_put_required_named_parameters_first, strict_raw_type

import 'package:dio/dio.dart';
import 'package:hire_test/app/data/remote/outcome.dart';
import 'package:hire_test/app/utils/logger.dart';

import 'api_exception.dart';

Outcome ErrorInterceptorHandling({dynamic response, required Outcome result, String? url}) {
  response as DioException;
  result.isFailure = true;
  result.statusCode = response.response?.statusCode;
  result.body = response.response?.data;

  logW('${response.response?.statusCode} | ${response.response?.statusMessage}');

  switch (response.response?.statusCode) {
    case 400:
      result.errorMessages = response.response?.data['message']; // commonly
      throw ApiException(result.errorMessages);
    case 401:
      result.errorMessages = 'Session expired (401)';
      throw ApiException(result.errorMessages);
    case 403:
      result.errorMessages = 'Access Forbidden (403)';
      throw ApiException(result.errorMessages);
    case 404:
      result.errorMessages = 'Path not found (404)';
      throw ApiException(result.errorMessages);
    case 405:
      result.errorMessages = 'Method not allowed (405)';
      throw ApiException(result.errorMessages);
    case 422:
      final message = response.response?.data['message'] as String;
      if (message.toLowerCase().contains('dioerror')) {
        result.errorMessages = 'Server not responding. Kode 422';
      } else {
        result.errorMessages = response.response?.data['message'];
      }
      throw ApiException(result.errorMessages);
    case 500:
      result.errorMessages = 'Internal Server Error (500)\n${response.response?.data['message']}';
      throw ApiException(result.errorMessages);
    case 503:
      result.errorMessages = 'Service Unavailable (503)';
      throw ApiException(result.errorMessages);
    default: // offline
      result.errorMessages = 'Not connected to server.';
      throw ApiException(result.errorMessages);
  }
}
