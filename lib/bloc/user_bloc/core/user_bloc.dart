import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_passwords_app/bloc/user_bloc/models/user.dart';
import 'package:store_passwords_app/bloc/user_bloc/repo/user_storage_repo.dart';

part 'user_states.dart';
part 'user_events.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvents, UserStates> {
  final UserStorageRepo repo;

  UserBloc({ required this.repo }): super(const UserStates.initialState()) {
    on<UserEvents>((event, emit) async {
      await event.when(
        clickedOffline: () => _clickedOffline(emit),
        clickedAuth:(userData) => _clickedAuth(userData, emit),
        checkOfflineStatus: () => _checkOfflineStatus(emit)
      );
    });
  }

  Future<void> _checkOfflineStatus(Emitter<UserStates> emit) async {
    final isOffline = await repo.isUserOffline();
    if (isOffline) {
      log("Using app offline", name: "UserBloc:_checkOfflineStatus");
      emit(const UserStates.usingOffline());
    } else {
      log("Using app online", name: "UserBloc:_checkOfflineStatus");
      final userData = await repo.getUserData();
      if (userData != null) {
        log("User data != null", name: "UserBloc:_checkOfflineStatus");
        emit(UserStates.usingOnline(data: userData));
      } else {
        log("User data = null. Not authorized?", name: "UserBloc:_checkOfflineStatus");
      }
    }
  }

  Future<void> _clickedOffline(Emitter<UserStates> emit) async {
    await repo.saveOfflineStatus(isOffline: true);
    emit(const UserStates.usingOffline());
  }

  Future<void> _clickedAuth(User userData, Emitter<UserStates> emit) async {

  }
}