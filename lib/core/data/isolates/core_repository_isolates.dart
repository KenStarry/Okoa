import 'dart:isolate';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../features/feature_auth/domain/model/okoa_user.dart';
import '../api/api.dart';

void getAllUsersFromDBIsolate(SendPort sendPort) async {

  await Supabase.initialize(url: Api.url, anonKey: Api.anonKey);
  final supabase = Supabase.instance.client;

  try {
    final List<Map<String, dynamic>> users =
        await supabase.from('users').select();

    sendPort.send(users.map((user) => OkoaUser.fromJson(user)).toList());
  } catch (error) {
    sendPort.send(error);
  }
}