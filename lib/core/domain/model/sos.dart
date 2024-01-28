import 'package:freezed_annotation/freezed_annotation.dart';

part 'sos.freezed.dart';

part 'sos.g.dart';

@freezed
class SOS with _$SOS {
  @JsonSerializable(explicitToJson: true)
  const factory SOS({
    @JsonKey(name: 'sos_state') @Default('SosState.safe') String sosState,
    @JsonKey(name: 'sos_date') @Default('') String sosDate,
  }) = _SOS;

  factory SOS.fromJson(Map<String, dynamic> json) => _$SOSFromJson(json);
}
