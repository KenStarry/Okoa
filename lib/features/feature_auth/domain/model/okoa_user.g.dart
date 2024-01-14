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
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$OkoaUserImplToJson(_$OkoaUserImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'email_address': instance.email,
      'created_at': instance.createdAt,
      'username': instance.userName,
      'phone_number': instance.phone,
      'avatar_url': instance.avatarUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
