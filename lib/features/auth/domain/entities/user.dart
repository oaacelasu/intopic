import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intopic/features/common/domain/values/value_abstract.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required Name name,
    required EmailAddress email,
    required String token,
  }) = _User;

  const factory User.empty({
    @Default('') String id,
    @Default(Name.empty()) Name name,
    @Default(EmailAddress.empty()) EmailAddress email,
    @Default('') String token,
  }) = _UserEmpty;

  const User._();

  bool isValid() {
    return id.isNotEmpty && token.isNotEmpty;
  }
}
