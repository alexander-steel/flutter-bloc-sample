import 'dart:convert';

import 'api_response_errors.dart';

class ApiResponseErrorFactory {

  static bool isErrorResponse(int statusCode) {
    return 400 <= statusCode && statusCode <= 599;
  }

  static ApiResponseError create(int statusCode, String responseBody) {
    Map<String, dynamic> error;

    try {
      error = json.decode(responseBody)['error'];
    } catch (e) {
      error = {};
    }

    if (statusCode == 401) {
      return AuthorizationError(
        error: error,
        responseBody: responseBody,
      );
    } else if (statusCode == 403) {
      return ForbiddenError(
        error: error,
        responseBody: responseBody,
      );
    } else if (statusCode == 404) {
      return NotFoundError(
        error: error,
        responseBody: responseBody,
      );
    } else if (statusCode == 500) {
      return InternalServerError(
        error: error,
        responseBody: responseBody,
      );
    } else {
      return UnexpectedError(
        statusCode: statusCode,
        error: error,
        responseBody: responseBody,
      );
    }
  }
}