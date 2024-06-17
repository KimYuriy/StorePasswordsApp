import 'package:store_passwords_app/bloc/user_bloc/models/user.dart';
import 'package:store_passwords_app/bloc/user_bloc/repo/user_data_storage.dart';

class UserStorageRepo {
  final UserDataStorage db;

  UserStorageRepo({ required this.db });

  Future<void> saveUserData(Map<String, dynamic> data) async {
    await db.saveUserData(data);
  }

  Future<User?> getUserData() async => await db.getUserData();

  Future<void> saveOfflineStatus({ required bool isOffline }) async {
    await db.saveOfflineStatus(isOffline: isOffline);
  }

  Future<bool> isUserOffline() async => await db.isUserOffline();

  Future<void> clearUserData() async {
    await db.clearUserData();
  }

  Future<void> clearOfflineStatus() async {
    await db.clearOfflineStatus();
  }
}