import 'package:okoa/core/domain/use_case/get_user_data_from_db.dart';
import 'package:okoa/core/domain/use_case/listen_to_user_data_on_db.dart';
import 'package:okoa/core/domain/use_case/update_user_data_on_db.dart';

import 'listen_to_internet_status.dart';

class CoreUseCases {
  final GetUserDataFromDB getUserDataFromDB;
  final UpdateUserDataOnDB updateUserDataOnDB;
  final ListenToUserDataOnDB listenToUserDataOnDB;
  final ListenToInternetStatus listenToInternetStatus;

  CoreUseCases(
      {required this.getUserDataFromDB,
      required this.updateUserDataOnDB,
      required this.listenToUserDataOnDB,
      required this.listenToInternetStatus});
}
