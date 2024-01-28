import 'package:freezed_annotation/freezed_annotation.dart';

part 'sos.freezed.dart';

part 'sos.g.dart';

@freezed
class SOS with _$SOS {
  @JsonSerializable(explicitToJson: true)
  const factory SOS({
    @JsonKey(name: 'sosState') @Default('SosState.safe') String sosState,
    @JsonKey(name: 'sosDate') @Default('') String sosDate,
  }) = _SOS;

  factory SOS.fromJson(Map<String, dynamic> json) => _$SOSFromJson(json);
}
