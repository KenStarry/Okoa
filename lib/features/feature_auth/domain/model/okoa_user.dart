import 'package:freezed_annotation/freezed_annotation.dart';

part 'okoa_user.freezed.dart';

part 'okoa_user.g.dart';

@freezed
class OkoaUser with _$OkoaUser {
  @JsonSerializable(explicitToJson: true)
  const factory OkoaUser(
      {@JsonKey(name: 'id') @Default('') String userId,
      @JsonKey(name: 'email_address') @Default('') String email,
      @JsonKey(name: 'created_at') @Default('') String createdAt,
      @JsonKey(name: 'username') @Default('') String userName,
      @JsonKey(name: 'phone_number') @Default('') String phone,
      @JsonKey(name: 'avatar_url') @Default('') String avatarUrl,
      @JsonKey(name: 'latitude') @Default(0.0) double latitude,
      @JsonKey(name: 'longitude') @Default(0.0) double longitude}) = _OkoaUser;

  factory OkoaUser.fromJson(Map<String, dynamic> json) =>
      _$OkoaUserFromJson(json);
}
