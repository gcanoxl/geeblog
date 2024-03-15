// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..id = json['id'] as String
  ..username = json['username'] as String
  ..is_admin = json['is_admin'] as bool
  ..created_at = json['created_at'] as String;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'is_admin': instance.is_admin,
      'created_at': instance.created_at,
    };
