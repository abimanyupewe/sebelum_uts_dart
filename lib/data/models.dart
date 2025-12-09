class Event {
  final int id;
  final String title;
  final String category;
  final String date;
  final String time;
  final String location;
  final String thumbnailUrl;

  Event({
    required this.id,
    required this.title,
    required this.category,
    required this.date,
    required this.time,
    required this.location,
    required this.thumbnailUrl,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'] as int,
      title: json['title'] ?? '',
      category: json['category'] ?? '',
      date: json['date'] ?? '',
      time: json['time'] ?? '',
      location: json['location'] ?? '',
      thumbnailUrl: json['thumbnail_url'] ?? '',
    );
  }
}

class EventDetail {
  final int id;
  final String title;
  final String category;
  final String date;
  final String time;
  final String location;
  final String speaker;
  final int quota;
  final int registered;
  final String description;
  final String imageUrl;

  EventDetail({
    required this.id,
    required this.title,
    required this.category,
    required this.date,
    required this.time,
    required this.location,
    required this.speaker,
    required this.quota,
    required this.registered,
    required this.description,
    required this.imageUrl,
  });

  factory EventDetail.fromJson(Map<String, dynamic> json) {
    return EventDetail(
      id: json['id'] as int,
      title: json['title'] ?? '',
      category: json['category'] ?? '',
      date: json['date'] ?? '',
      time: json['time'] ?? '',
      location: json['location'] ?? '',
      speaker: json['speaker'] ?? '',
      quota: json['quota'] ?? 0,
      registered: json['registered'] ?? 0,
      description: json['description'] ?? '',
      imageUrl: json['image_url'] ?? '',
    );
  }
}
