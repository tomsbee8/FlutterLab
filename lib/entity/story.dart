import 'dart:convert';

import 'package:meta/meta.dart';

class Story {
  final String name;
  final String time;
  final String storyCover;
  final String title;
  final String subtitle;
  final String location;

  Story(
      {@required this.name,
      @required this.time,
      @required this.storyCover,
      @required this.title,
      @required this.subtitle,
      @required this.location});

  Story.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        time = json['time'],
        storyCover = json['storyCover'],
        title = json['title'],
        subtitle = json['subtitle'],
        location = json['location'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'time': time,
        'storyCover': storyCover,
        'title': title,
        'subtitle': subtitle,
        'location': location,
      };
}
