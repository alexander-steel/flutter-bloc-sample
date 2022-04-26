import 'dart:convert';

import 'package:flutter_bloc_sample/gateway/api/base/api_runner.dart';
import 'package:flutter_bloc_sample/util/http/http_client_uitil.dart';
import 'package:http/http.dart' as http;

class GoogleCalendarApiService {
  final UseClient _useClient;

  GoogleCalendarApiService({
    required UseClient useClient,
  }) : _useClient = useClient;

  Future<String> getGoogleCalendar() async {
    final runner = () => _useClient((client) => client.get(
          Uri(scheme: ""),
          headers: {},
        ));

    http.Response response = await ApiRunner(runner).run();

    final result = json.decode(response.body);

    return result[""];
  }
}
