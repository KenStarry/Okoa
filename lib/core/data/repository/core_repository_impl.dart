import 'dart:async';

import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../di/di.dart';

class CoreRepositoryimpl extends CoreRepository {
  final supabase = locator.get<SupabaseClient>();

  @override
  Future<void> getUserDataFromDatabase(
      {required String uid,
      required Function(OkoaUser okoaUser) onGetUserData}) async {
    try {
      final userData =
          await supabase.from('users').select().eq('id', uid).single();

      onGetUserData(OkoaUser.fromJson(userData));
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<void> updateUserDataOnDB(
      {required String columnName, required columnValue, String? uid}) async {
    try {
      final currentUserId = supabase.auth.currentUser!.id;

      await supabase.from('users').update({columnName: columnValue}).match(
          {'id': uid ?? currentUserId});
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  void listenToUserDataonDB(
      {required String uid,
      required Function(OkoaUser okoaUser) onGetUserData}) {
    supabase
        .from('users')
        .stream(primaryKey: ['id'])
        .eq('id', uid)
        .limit(1)
        .listen((data) {
          //  get the first element
          final userDataJson = data[0];

          onGetUserData(OkoaUser.fromJson(userDataJson));
        });
  }
}
