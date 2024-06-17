part of 'user_bloc.dart';

@freezed
class UserEvents with _$UserEvents {
  const factory UserEvents.clickedOffline() = _ClickedOffline;
  const factory UserEvents.clickedAuth({ required User userData }) = _ClickedAuth;
  const factory UserEvents.checkOfflineStatus() = _CheckOfflineStatus;
}