import 'package:okoa/core/domain/use_case/get_user_data_from_db.dart';
import 'package:okoa/core/domain/use_case/listen_to_user_data_on_db.dart';

class CoreUseCases {
  final GetUserDataFromDB getUserDataFromDB;
  final ListenToUserDataOnDB listenToUserDataOnDB;

  CoreUseCases(
      {required this.getUserDataFromDB, required this.listenToUserDataOnDB});
}
