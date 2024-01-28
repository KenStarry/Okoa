import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okoa/core/domain/model/sos.dart';
import 'package:okoa/features/feature_add_partner/domain/model/okoa_partner.dart';

part 'okoa_user.freezed.dart';

part 'okoa_user.g.dart';

@freezed
class OkoaUser with _$OkoaUser {
  @JsonSerializable(explicitToJson: true)
  const factory OkoaUser({
    @JsonKey(name: 'id') @Default('') String userId,
    @JsonKey(name: 'email_address') @Default('') String email,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'username') @Default('') String userName,
    @JsonKey(name: 'phone_number') @Default('') String phone,
    @JsonKey(name: 'avatar_url') @Default('') String avatarUrl,
    @JsonKey(name: 'latitude') @Default('') String latitude,
    @JsonKey(name: 'longitude') @Default('') String longitude,
    @JsonKey(name: 'sent_requests') @Default([]) List<OkoaPartner> sentRequests,
    @JsonKey(name: 'received_requests')
    @Default([])
    List<OkoaPartner> receivedRequests,
    @JsonKey(name: 'partners') @Default([]) List<String> partners,
    @JsonKey(name: 'sos')
    @Default(SOS(sosState: 'SosState.safe', sosDate: '2024-01-28'))
    SOS sos,
  }) = _OkoaUser;

  factory OkoaUser.fromJson(Map<String, dynamic> json) =>
      _$OkoaUserFromJson(json);
}
