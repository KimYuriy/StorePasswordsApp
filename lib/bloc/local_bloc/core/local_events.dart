part of 'local_bloc.dart';

@freezed
class LocalEvents with _$LocalEvents {
  const factory LocalEvents.loadAllData() = _LoadAllData;
  const factory LocalEvents.addData({ required Resource data }) = _AddData;
  const factory LocalEvents.editData({ required Resource data }) = _EditData;
  const factory LocalEvents.deleteData({ required int resourceDataID }) = _DeleteData;
  const factory LocalEvents.clearAllData() = _ClearAllData;
}