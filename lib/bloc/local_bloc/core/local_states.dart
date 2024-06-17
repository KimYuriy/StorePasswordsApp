part of 'local_bloc.dart';

@freezed
class LocalStates with _$LocalStates {
  const factory LocalStates.loading() = _Loading;
  const factory LocalStates.loaded({ @Default([]) List<Resource> data }) = _Loaded;
  const factory LocalStates.errorLoading({ @Default("Возникла непредвиденная ошибка") String error }) = _ErrorLoading;
}