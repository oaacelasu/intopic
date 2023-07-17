// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizDto _$$_QuizDtoFromJson(Map<String, dynamic> json) => _$_QuizDto(
      id: json['id'] as String?,
      topicId: json['topicId'] as String?,
      userId: json['userId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageURL: json['imageURL'] as String?,
      quizAccessFromTime: json['quizAccessFromTime'] as String?,
      quizAccessToTime: json['quizAccessToTime'] as String?,
      isQuizActive: json['isQuizActive'] as bool?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => QuestionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuizDtoToJson(_$_QuizDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topicId': instance.topicId,
      'userId': instance.userId,
      'title': instance.title,
      'description': instance.description,
      'imageURL': instance.imageURL,
      'quizAccessFromTime': instance.quizAccessFromTime,
      'quizAccessToTime': instance.quizAccessToTime,
      'isQuizActive': instance.isQuizActive,
      'questions': instance.questions,
    };
