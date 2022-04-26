import 'dart:async';
import 'package:flutter_bloc_sample/gateway/api/exception/api_response_error_factory.dart';
import 'package:flutter_bloc_sample/gateway/api/exception/api_response_errors.dart';
import 'package:http/http.dart' as http;

class ApiRunner {
  final Future<http.Response> Function() runner;

  ApiRunner(this.runner);

  Future<http.Response> run() async {
    try {
      final http.Response response = await runner();

      if (!ApiResponseErrorFactory.isErrorResponse(response.statusCode)) {
        return response;
      } else {
        throw ApiResponseErrorFactory.create(
          response.statusCode,
          response.body,
        );
      }
    } catch (e) {
      // FutureがTimeoutした時に実行される
      if (e is TimeoutException) {
        throw TimeoutError(error: {}, responseBody: '');
      }

      rethrow;
    }
  }
}