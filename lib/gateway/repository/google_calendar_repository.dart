import 'package:flutter_bloc_sample/gateway/api/google_calendar_api_service.dart';

class GoogleCalendarRepository {
  final GoogleCalendarApiService _calendarApiService;

  GoogleCalendarRepository(
      {required GoogleCalendarApiService googleCalendarApiService})
      : _calendarApiService = googleCalendarApiService;

  Future<String> getGoogleCalendar() async {
    final result = await _calendarApiService.getGoogleCalendar();

    return "";
  }
}
