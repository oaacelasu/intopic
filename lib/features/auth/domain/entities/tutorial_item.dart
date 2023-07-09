import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutorial_item.freezed.dart';

@freezed
class TutorialItem with _$TutorialItem {
  const factory TutorialItem({
    required String title,
    required String description,
    required String image,
  }) = _TutorialItem;

  const TutorialItem._();
}
