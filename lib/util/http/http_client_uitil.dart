import 'dart:async';
import 'package:http/http.dart';

typedef UseClient = Future<T> Function<T>(Future<T> Function(Client));

class HttpClientUtil {
  static Future<T> useClient<T>(Future<T> Function(Client) fn) async {
    var client = Client();
    try {
      return await fn(client);
    } finally {
      client.close();
    }
  }
}