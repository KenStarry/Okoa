import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:encrypt/encrypt.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:okoa/core/data/isolates/core_repository_isolates.dart';
import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../di/di.dart';
import '../../domain/model/response_state.dart';

class CoreRepositoryimpl extends CoreRepository {
  final supabase = locator.get<SupabaseClient>();

  @override
  Future<void> makePhoneCall({required String phoneNumber}) async =>
      await FlutterPhoneDirectCaller.callNumber(phoneNumber);

  @override
  void listenToInternetStatus(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      InternetConnectionChecker().onStatusChange.listen(onStatusChanged);

  @override
  Future<void> getAllUsersFromDB(
      {required Function(List<OkoaUser> users) onFetchUsers}) async {
    try {
      final List<Map<String, dynamic>> users =
          await supabase.from('users').select();

      onFetchUsers(users.map((user) => OkoaUser.fromJson(user)).toList());
    } catch (error) {
      throw Exception(error);
    }
  }

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
      {required Map<String, dynamic> data,
      String? uid,
      required Function(ResponseState response) onResponse}) async {
    try {
      final currentUserId = supabase.auth.currentUser!.id;

      await supabase
          .from('users')
          .update(data)
          .match({'id': uid ?? currentUserId});
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

  @override
  encryptAES(
      {required data, required Encrypter encrypter, required String key}) {
    final encryptionKey = Key.fromUtf8(key);
    final iv = IV.fromLength(16);

    final Encrypted encryptedData = encrypter.encrypt(data.toString(), iv: iv);
    return encryptedData.base64;
  }

  @override
  decryptAES(
      {required Encrypted encryptedData,
      required Encrypter encrypter,
      required String key}) {
    final decryptionKey = Key.fromUtf8(key);
    final iv = IV.fromLength(16);

    final decryptedData = encrypter.decrypt(encryptedData, iv: iv);

    print(
        "------------------DECRYPTED DATA IMPLEMENTATION : ${base64.decode(decryptedData)}");
    return decryptedData;
  }
}
