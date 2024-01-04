import 'package:freezed_annotation/freezed_annotation.dart';

part 'okoa_user.freezed.dart';

part 'okoa_user.g.dart';

@freezed
class OkoaUser with _$OkoaUser {
  const factory OkoaUser(
      {@Default('') String userName,
      @Default('') String email,
      @Default('') String phone,
      @Default('') String avatarUrl}) = _OkoaUser;

  factory OkoaUser.fromJson(Map<String, dynamic> json) =>
      _$OkoaUserFromJson(json);
}
