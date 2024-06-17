part of 'user_bloc.dart';

@freezed
class UserStates with _$UserStates {
  const factory UserStates.initialState() = _InitialState;
  const factory UserStates.usingOffline() = _UsingOffline;
  const factory UserStates.usingOnline({ required User data }) = _UsingOnline;
}