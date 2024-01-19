// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'okoa_partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OkoaPartner _$OkoaPartnerFromJson(Map<String, dynamic> json) {
  return _OkoaPartner.fromJson(json);
}

/// @nodoc
mixin _$OkoaPartner {
  @JsonKey(name: 'senderId')
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiverId')
  String get receiverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiverContactName')
  String get receiverContactName => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiverContactPhone')
  String get receiverContactPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OkoaPartnerCopyWith<OkoaPartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OkoaPartnerCopyWith<$Res> {
  factory $OkoaPartnerCopyWith(
          OkoaPartner value, $Res Function(OkoaPartner) then) =
      _$OkoaPartnerCopyWithImpl<$Res, OkoaPartner>;
  @useResult
  $Res call(
      {@JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'receiverId') String receiverId,
      @JsonKey(name: 'receiverContactName') String receiverContactName,
      @JsonKey(name: 'receiverContactPhone') String receiverContactPhone});
}

/// @nodoc
class _$OkoaPartnerCopyWithImpl<$Res, $Val extends OkoaPartner>
    implements $OkoaPartnerCopyWith<$Res> {
  _$OkoaPartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? receiverId = null,
    Object? receiverContactName = null,
    Object? receiverContactPhone = null,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverContactName: null == receiverContactName
          ? _value.receiverContactName
          : receiverContactName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverContactPhone: null == receiverContactPhone
          ? _value.receiverContactPhone
          : receiverContactPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OkoaPartnerImplCopyWith<$Res>
    implements $OkoaPartnerCopyWith<$Res> {
  factory _$$OkoaPartnerImplCopyWith(
          _$OkoaPartnerImpl value, $Res Function(_$OkoaPartnerImpl) then) =
      __$$OkoaPartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'receiverId') String receiverId,
      @JsonKey(name: 'receiverContactName') String receiverContactName,
      @JsonKey(name: 'receiverContactPhone') String receiverContactPhone});
}

/// @nodoc
class __$$OkoaPartnerImplCopyWithImpl<$Res>
    extends _$OkoaPartnerCopyWithImpl<$Res, _$OkoaPartnerImpl>
    implements _$$OkoaPartnerImplCopyWith<$Res> {
  __$$OkoaPartnerImplCopyWithImpl(
      _$OkoaPartnerImpl _value, $Res Function(_$OkoaPartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? receiverId = null,
    Object? receiverContactName = null,
    Object? receiverContactPhone = null,
  }) {
    return _then(_$OkoaPartnerImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverContactName: null == receiverContactName
          ? _value.receiverContactName
          : receiverContactName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverContactPhone: null == receiverContactPhone
          ? _value.receiverContactPhone
          : receiverContactPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OkoaPartnerImpl implements _OkoaPartner {
  const _$OkoaPartnerImpl(
      {@JsonKey(name: 'senderId') this.senderId = '',
      @JsonKey(name: 'receiverId') this.receiverId = '',
      @JsonKey(name: 'receiverContactName') this.receiverContactName = '',
      @JsonKey(name: 'receiverContactPhone') this.receiverContactPhone = ''});

  factory _$OkoaPartnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OkoaPartnerImplFromJson(json);

  @override
  @JsonKey(name: 'senderId')
  final String senderId;
  @override
  @JsonKey(name: 'receiverId')
  final String receiverId;
  @override
  @JsonKey(name: 'receiverContactName')
  final String receiverContactName;
  @override
  @JsonKey(name: 'receiverContactPhone')
  final String receiverContactPhone;

  @override
  String toString() {
    return 'OkoaPartner(senderId: $senderId, receiverId: $receiverId, receiverContactName: $receiverContactName, receiverContactPhone: $receiverContactPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkoaPartnerImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.receiverContactName, receiverContactName) ||
                other.receiverContactName == receiverContactName) &&
            (identical(other.receiverContactPhone, receiverContactPhone) ||
                other.receiverContactPhone == receiverContactPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, receiverId,
      receiverContactName, receiverContactPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkoaPartnerImplCopyWith<_$OkoaPartnerImpl> get copyWith =>
      __$$OkoaPartnerImplCopyWithImpl<_$OkoaPartnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OkoaPartnerImplToJson(
      this,
    );
  }
}

abstract class _OkoaPartner implements OkoaPartner {
  const factory _OkoaPartner(
      {@JsonKey(name: 'senderId') final String senderId,
      @JsonKey(name: 'receiverId') final String receiverId,
      @JsonKey(name: 'receiverContactName') final String receiverContactName,
      @JsonKey(name: 'receiverContactPhone')
      final String receiverContactPhone}) = _$OkoaPartnerImpl;

  factory _OkoaPartner.fromJson(Map<String, dynamic> json) =
      _$OkoaPartnerImpl.fromJson;

  @override
  @JsonKey(name: 'senderId')
  String get senderId;
  @override
  @JsonKey(name: 'receiverId')
  String get receiverId;
  @override
  @JsonKey(name: 'receiverContactName')
  String get receiverContactName;
  @override
  @JsonKey(name: 'receiverContactPhone')
  String get receiverContactPhone;
  @override
  @JsonKey(ignore: true)
  _$$OkoaPartnerImplCopyWith<_$OkoaPartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
