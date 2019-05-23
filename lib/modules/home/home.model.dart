import 'package:json_annotation/json_annotation.dart';

part 'home.model.g.dart';

@JsonSerializable()
class Home {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Home({this.userId = 0, this.id = 0, this.title = '', this.completed = false});

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
