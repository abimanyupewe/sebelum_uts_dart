import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;
import 'models.dart';

class ApiService {
  /// Mengambil data event dari file JSON lokal
  static Future<List<Event>> fetchEvents({String? query}) async {
    // Membaca data dari file JSON
    final String response = await rootBundle.rootBundle.loadString(
      'lib/data/events_data.json',
    );
    final Map<String, dynamic> data = jsonDecode(response);

    // Filter jika ada query pencarian
    List<dynamic> eventList = data['data'];
    if (query != null && query.isNotEmpty) {
      eventList = eventList
          .where(
            (event) =>
                event['title'].toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    }

    return eventList.map((json) => Event.fromJson(json)).toList();
  }

  /// Mengambil detail event dari data dummy (offline)
  static Future<EventDetail> fetchEventDetail(int id) async {
    final String response = await rootBundle.rootBundle.loadString(
      'lib/data/events_data.json',
    );
    final Map<String, dynamic> data = jsonDecode(response);

    final eventDetailJson = data['data'].firstWhere(
      (event) => event['id'] == id,
    );

    return EventDetail.fromJson(eventDetailJson);
  }

  /// Fungsi simulasi pendaftaran event
  static Future<String> registerEvent({
    required int eventId,
    required String studentId,
    required String name,
    required String email,
    required String phone,
  }) async {
    await Future.delayed(const Duration(seconds: 2)); // Simulasi delay
    return 'Pendaftaran berhasil untuk event ID: $eventId';
  }
}
