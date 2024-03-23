import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_controller.g.dart';

@riverpod
class SimCardToggle extends _$SimCardToggle {
  @override
  int build() => 1;

  //  toggle sim card state
  void setDefaultSimCard({required int defaultSim}) => state = defaultSim;
}
