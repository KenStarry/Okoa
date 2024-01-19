// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'okoa_partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OkoaPartnerImpl _$$OkoaPartnerImplFromJson(Map<String, dynamic> json) =>
    _$OkoaPartnerImpl(
      senderId: json['senderId'] as String? ?? '',
      receiverId: json['receiverId'] as String? ?? '',
      receiverContactName: json['receiverContactName'] as String? ?? '',
      receiverContactPhone: json['receiverContactPhone'] as String? ?? '',
    );

Map<String, dynamic> _$$OkoaPartnerImplToJson(_$OkoaPartnerImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'receiverContactName': instance.receiverContactName,
      'receiverContactPhone': instance.receiverContactPhone,
    };
