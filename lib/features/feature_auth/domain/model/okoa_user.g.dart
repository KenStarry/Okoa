// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okoa_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OkoaUserImpl _$$OkoaUserImplFromJson(Map<String, dynamic> json) =>
    _$OkoaUserImpl(
      userName: json['userName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$OkoaUserImplToJson(_$OkoaUserImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'avatarUrl': instance.avatarUrl,
    };
