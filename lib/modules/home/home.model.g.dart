// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) {
  return Home(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool);
}

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed
    };
