import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:store_passwords_app/bloc/user_bloc/models/user.dart';
import 'package:store_passwords_app/extensions/string_extensions.dart';

class UserDataStorage {
  final _userDataKey = 'user_data';
  final _isOfflineKey = 'is_offline_key';
  final _storage = const FlutterSecureStorage();

  Future<void> saveUserData(Map<String, dynamic> data) async {
    await _storage.write(key: _userDataKey, value: data.toString());
  }

  Future<User?> getUserData() async {
    final data = await _storage.read(key: _userDataKey);
    if (data == null) return null;
    return User.fromJson(json.decode(data));
  }

  Future<void> saveOfflineStatus({ required bool isOffline }) async {
    await _storage.write(key: _isOfflineKey, value: isOffline.toString());
  }

  Future<bool> isUserOffline() async {
    final data = await _storage.read(key: _isOfflineKey);
    if (data == null) return false;
    return data.toBoolean();
  }

  Future<void> clearUserData() async {
    await _storage.delete(key: _userDataKey);
  }

  Future<void> clearOfflineStatus() async {
    await _storage.delete(key: _isOfflineKey);
  }
}