// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'okoa_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OkoaUser _$OkoaUserFromJson(Map<String, dynamic> json) {
  return _OkoaUser.fromJson(json);
}

/// @nodoc
mixin _$OkoaUser {
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OkoaUserCopyWith<OkoaUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OkoaUserCopyWith<$Res> {
  factory $OkoaUserCopyWith(OkoaUser value, $Res Function(OkoaUser) then) =
      _$OkoaUserCopyWithImpl<$Res, OkoaUser>;
  @useResult
  $Res call({String userName, String email, String phone, String avatarUrl});
}

/// @nodoc
class _$OkoaUserCopyWithImpl<$Res, $Val extends OkoaUser>
    implements $OkoaUserCopyWith<$Res> {
  _$OkoaUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? phone = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OkoaUserImplCopyWith<$Res>
    implements $OkoaUserCopyWith<$Res> {
  factory _$$OkoaUserImplCopyWith(
          _$OkoaUserImpl value, $Res Function(_$OkoaUserImpl) then) =
      __$$OkoaUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String email, String phone, String avatarUrl});
}

/// @nodoc
class __$$OkoaUserImplCopyWithImpl<$Res>
    extends _$OkoaUserCopyWithImpl<$Res, _$OkoaUserImpl>
    implements _$$OkoaUserImplCopyWith<$Res> {
  __$$OkoaUserImplCopyWithImpl(
      _$OkoaUserImpl _value, $Res Function(_$OkoaUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? phone = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$OkoaUserImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OkoaUserImpl implements _OkoaUser {
  const _$OkoaUserImpl(
      {this.userName = '',
      this.email = '',
      this.phone = '',
      this.avatarUrl = ''});

  factory _$OkoaUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$OkoaUserImplFromJson(json);

  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String avatarUrl;

  @override
  String toString() {
    return 'OkoaUser(userName: $userName, email: $email, phone: $phone, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkoaUserImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, email, phone, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkoaUserImplCopyWith<_$OkoaUserImpl> get copyWith =>
      __$$OkoaUserImplCopyWithImpl<_$OkoaUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OkoaUserImplToJson(
      this,
    );
  }
}

abstract class _OkoaUser implements OkoaUser {
  const factory _OkoaUser(
      {final String userName,
      final String email,
      final String phone,
      final String avatarUrl}) = _$OkoaUserImpl;

  factory _OkoaUser.fromJson(Map<String, dynamic> json) =
      _$OkoaUserImpl.fromJson;

  @override
  String get userName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$OkoaUserImplCopyWith<_$OkoaUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
