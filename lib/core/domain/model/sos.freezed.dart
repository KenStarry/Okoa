// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SOS _$SOSFromJson(Map<String, dynamic> json) {
  return _SOS.fromJson(json);
}

/// @nodoc
mixin _$SOS {
  @JsonKey(name: 'sosState')
  String get sosState => throw _privateConstructorUsedError;
  @JsonKey(name: 'sosDate')
  String get sosDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SOSCopyWith<SOS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SOSCopyWith<$Res> {
  factory $SOSCopyWith(SOS value, $Res Function(SOS) then) =
      _$SOSCopyWithImpl<$Res, SOS>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sosState') String sosState,
      @JsonKey(name: 'sosDate') String sosDate});
}

/// @nodoc
class _$SOSCopyWithImpl<$Res, $Val extends SOS> implements $SOSCopyWith<$Res> {
  _$SOSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sosState = null,
    Object? sosDate = null,
  }) {
    return _then(_value.copyWith(
      sosState: null == sosState
          ? _value.sosState
          : sosState // ignore: cast_nullable_to_non_nullable
              as String,
      sosDate: null == sosDate
          ? _value.sosDate
          : sosDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SOSImplCopyWith<$Res> implements $SOSCopyWith<$Res> {
  factory _$$SOSImplCopyWith(_$SOSImpl value, $Res Function(_$SOSImpl) then) =
      __$$SOSImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sosState') String sosState,
      @JsonKey(name: 'sosDate') String sosDate});
}

/// @nodoc
class __$$SOSImplCopyWithImpl<$Res> extends _$SOSCopyWithImpl<$Res, _$SOSImpl>
    implements _$$SOSImplCopyWith<$Res> {
  __$$SOSImplCopyWithImpl(_$SOSImpl _value, $Res Function(_$SOSImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sosState = null,
    Object? sosDate = null,
  }) {
    return _then(_$SOSImpl(
      sosState: null == sosState
          ? _value.sosState
          : sosState // ignore: cast_nullable_to_non_nullable
              as String,
      sosDate: null == sosDate
          ? _value.sosDate
          : sosDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SOSImpl implements _SOS {
  const _$SOSImpl(
      {@JsonKey(name: 'sosState') this.sosState = 'SosState.safe',
      @JsonKey(name: 'sosDate') this.sosDate = ''});

  factory _$SOSImpl.fromJson(Map<String, dynamic> json) =>
      _$$SOSImplFromJson(json);

  @override
  @JsonKey(name: 'sosState')
  final String sosState;
  @override
  @JsonKey(name: 'sosDate')
  final String sosDate;

  @override
  String toString() {
    return 'SOS(sosState: $sosState, sosDate: $sosDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SOSImpl &&
            (identical(other.sosState, sosState) ||
                other.sosState == sosState) &&
            (identical(other.sosDate, sosDate) || other.sosDate == sosDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sosState, sosDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SOSImplCopyWith<_$SOSImpl> get copyWith =>
      __$$SOSImplCopyWithImpl<_$SOSImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SOSImplToJson(
      this,
    );
  }
}

abstract class _SOS implements SOS {
  const factory _SOS(
      {@JsonKey(name: 'sosState') final String sosState,
      @JsonKey(name: 'sosDate') final String sosDate}) = _$SOSImpl;

  factory _SOS.fromJson(Map<String, dynamic> json) = _$SOSImpl.fromJson;

  @override
  @JsonKey(name: 'sosState')
  String get sosState;
  @override
  @JsonKey(name: 'sosDate')
  String get sosDate;
  @override
  @JsonKey(ignore: true)
  _$$SOSImplCopyWith<_$SOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
