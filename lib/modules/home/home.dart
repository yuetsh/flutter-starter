import 'package:json_annotation/json_annotation.dart';

part 'home.g.dart';

@JsonSerializable()
class Home {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Home({this.userId, this.id, this.title, this.completed});

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
