// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okoa_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OkoaUserImpl _$$OkoaUserImplFromJson(Map<String, dynamic> json) =>
    _$OkoaUserImpl(
      userId: json['id'] as String? ?? '',
      email: json['email_address'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      userName: json['username'] as String? ?? '',
      phone: json['phone_number'] as String? ?? '',
      avatarUrl: json['avatar_url'] as String? ?? '',
    );

Map<String, dynamic> _$$OkoaUserImplToJson(_$OkoaUserImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'email_address': instance.email,
      'created_at': instance.createdAt,
      'username': instance.userName,
      'phone_number': instance.phone,
      'avatar_url': instance.avatarUrl,
    };
