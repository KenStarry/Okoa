import 'package:get_it/get_it.dart';
import 'package:okoa/di/auth_di.dart';
import 'package:okoa/di/core_di.dart';

final locator = GetIt.instance;

void invokeDI() {
  coreDI(locator: locator);
  authDI(locator: locator);
}
