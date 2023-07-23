// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['userId'] as String?,
      email: json['email'] as String?,
      userName: json['userName'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) => <String, dynamic>{
      'userId': instance.id,
      'email': instance.email,
      'userName': instance.userName,
      'token': instance.token,
    };
