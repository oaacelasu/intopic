import "dart:convert";

import "package:freezed_annotation/freezed_annotation.dart";
import "package:intopic/features/auth/domain/entities/user.dart";
import "package:intopic/features/common/domain/values/value_abstract.dart";
import "package:shared_preferences/shared_preferences.dart";

part "user_dto.freezed.dart";
part "user_dto.g.dart";

@freezed
class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: 'userId') required String? id,
     String? userName,
    required String? email,
     String? token
  }) = _UserDto;

  factory UserDto.fromDomain(User _) {
    return UserDto(
      id: _.id,
      userName: _.name.getOrEmpty(),
      email: _.email.getOrEmpty(),
      token: _.token,
    );
  }

  factory UserDto.fromPrefs(SharedPreferences prefs, String key) {
    final String? value = prefs.getString(key);
    try {
      return value == null
          ? UserDto.fromDomain(const User.empty())
          : UserDto.fromJson(jsonDecode(value) as Map<String, dynamic>);
    } catch (e) {
      return UserDto.fromDomain(
        const User.empty(),
      );
    }
  }

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  User toDomain() {
    return User(
      id: id ?? "",
      name: Name(userName),
      email: EmailAddress(email),
      token: token ?? "",
    );
  }
}
