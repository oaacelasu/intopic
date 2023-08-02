import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_type.freezed.dart';

@freezed
class QuestionType with _$QuestionType {
  const factory QuestionType.none() = _NoneQuestionType;

  const factory QuestionType.singleChoice() = _SingleChoiceQuestionType;

  const factory QuestionType.multipleChoice() = _MultipleChoiceQuestionType;

  const factory QuestionType.trueFalse() = _TrueFalseQuestionType;

  factory QuestionType.parse(String value) {
    switch (value) {
      case 'True/False' || 'trueFalse':
        return const QuestionType.trueFalse();
      case 'MCQs Multiple answer' || 'multipleChoice':
        return const QuestionType.multipleChoice();
      case 'MCQs One answer' || 'singleChoice':
        return const QuestionType.singleChoice();
      default:
        return const QuestionType.none();
    }
  }
}

extension QuestionTypeX on QuestionType {
  bool get isSingleChoice => this is _SingleChoiceQuestionType;

  bool get isMultipleChoice => this is _MultipleChoiceQuestionType;

  bool get isTrueFalse => this is _TrueFalseQuestionType;

  String toRaw() {
    return when(
      none: () => 'none',
      singleChoice: () => 'singleChoice',
      multipleChoice: () => 'multipleChoice',
      trueFalse: () => 'trueFalse',
    );
  }
}
