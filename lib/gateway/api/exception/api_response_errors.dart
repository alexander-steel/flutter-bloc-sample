import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ApiResponseError extends Error with EquatableMixin {
  final Map<String, dynamic> error;
  final String responseBody;

  ApiResponseError({
    required this.error,
    required this.responseBody,
  });

  @override
  List get props => [error, responseBody];
}

class TimeoutError extends ApiResponseError {
  TimeoutError({
    required Map<String, dynamic> error,
    required String responseBody,
  }) : super(
    error: error,
    responseBody: responseBody,
  );
}

class ForbiddenError extends ApiResponseError {
  ForbiddenError({
    required Map<String, dynamic> error,
    required String responseBody,
  }) : super(
    error: error,
    responseBody: responseBody,
  );
}

class NotFoundError extends ApiResponseError {
  NotFoundError({
    required Map<String, dynamic> error,
    required String responseBody,
  }) : super(
    error: error,
    responseBody: responseBody,
  );
}

class InternalServerError extends ApiResponseError {
  InternalServerError({
    required Map<String, dynamic> error,
    required String responseBody,
  }) : super(
    error: error,
    responseBody: responseBody,
  );
}

class AuthorizationError extends ApiResponseError {
  AuthorizationError({
    required Map<String, dynamic> error,
    required String responseBody,
  }) : super(
    error: error,
    responseBody: responseBody,
  );
}

class UnexpectedError extends ApiResponseError {
  final int statusCode;

  UnexpectedError({
    required this.statusCode,
    required Map<String, dynamic> error,
    required String responseBody,
  }) : super(
    error: error,
    responseBody: responseBody,
  );
}