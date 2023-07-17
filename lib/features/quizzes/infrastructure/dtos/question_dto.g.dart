// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionDto _$$_QuestionDtoFromJson(Map<String, dynamic> json) =>
    _$_QuestionDto(
      id: json['id'] as String?,
      quizId: json['quizId'] as String?,
      topicId: json['topicId'] as String?,
      questionType: json['questionType'] as String?,
      title: json['title'] as String?,
      question: json['question'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      correctAnswer: json['correctAnswer'] as String?,
    );

Map<String, dynamic> _$$_QuestionDtoToJson(_$_QuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quizId': instance.quizId,
      'topicId': instance.topicId,
      'questionType': instance.questionType,
      'title': instance.title,
      'question': instance.question,
      'options': instance.options,
      'correctAnswer': instance.correctAnswer,
    };
