// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopicDto _$$_TopicDtoFromJson(Map<String, dynamic> json) => _$_TopicDto(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      title: json['title'] as String?,
      imageURL: json['imageURL'] as String?,
      description: json['description'] as String?,
      noOfQuizzesAvailable: json['noOfQuizzesAvailable'] as int?,
    );

Map<String, dynamic> _$$_TopicDtoToJson(_$_TopicDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'imageURL': instance.imageURL,
      'description': instance.description,
      'noOfQuizzesAvailable': instance.noOfQuizzesAvailable,
    };
