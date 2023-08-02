// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopicDto _$$_TopicDtoFromJson(Map<String, dynamic> json) => _$_TopicDto(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      noOfQuizzesAvailable: json['noOfQuizzesAvailable'] as int?,
      quizzes: (json['quizzes'] as List<dynamic>?)
          ?.map((e) => QuizDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_TopicDtoToJson(_$_TopicDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'noOfQuizzesAvailable': instance.noOfQuizzesAvailable,
      'quizzes': instance.quizzes,
      'createdAt': instance.createdAt,
    };
