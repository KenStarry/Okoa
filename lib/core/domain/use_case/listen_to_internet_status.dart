import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

class ListenToInternetStatus {
  final repo = locator.get<CoreRepository>();

  void call(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      repo.listenToInternetStatus(onStatusChanged: onStatusChanged);
}
