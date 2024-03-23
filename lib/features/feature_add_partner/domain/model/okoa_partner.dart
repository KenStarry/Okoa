import 'package:freezed_annotation/freezed_annotation.dart';

part 'okoa_partner.freezed.dart';

part 'okoa_partner.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class OkoaPartner with _$OkoaPartner {
  @JsonSerializable(explicitToJson: true)
  const factory OkoaPartner(
      {@JsonKey(name: 'senderId') @Default('') String senderId,
      @JsonKey(name: 'receiverId') @Default('') String receiverId,
      @JsonKey(name: 'receiverContactName')
      @Default('')
      String receiverContactName,
      @JsonKey(name: 'receiverContactPhone')
      @Default('')
      String receiverContactPhone}) = _OkoaPartner;

  factory OkoaPartner.fromJson(Map<String, dynamic> json) =>
      _$OkoaPartnerFromJson(json);
}
