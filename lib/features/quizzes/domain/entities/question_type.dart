import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_type.freezed.dart';

@freezed
class QuestionType with _$QuestionType {
  const factory QuestionType.none() = _NoneQuestionType;

  const factory QuestionType.singleChoice() = _SingleChoiceQuestionType;

  const factory QuestionType.multipleChoice() = _MultipleChoiceQuestionType;

  const factory QuestionType.trueFalse() = _TrueFalseQuestionType;

  static QuestionType parse(String value) {
    switch (value) {
      case 'none':
        return const QuestionType.none();
      case 'singleChoice':
        return const QuestionType.singleChoice();
      case 'multipleChoice':
        return const QuestionType.multipleChoice();
      case 'trueFalse':
        return const QuestionType.trueFalse();
      default:
        throw ArgumentError('Invalid question type: $value');
    }
  }
}

extension QuestionTypeX on QuestionType {
  bool get isSingleChoice => this is _SingleChoiceQuestionType;
  bool get isMultipleChoice => this is _MultipleChoiceQuestionType;
  bool get isTrueFalse => this is _TrueFalseQuestionType;
}
