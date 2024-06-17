import 'package:store_passwords_app/bloc/local_bloc/models/resource.dart';
import 'package:store_passwords_app/bloc/local_bloc/repo/hive_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_events.dart';
part 'local_states.dart';
part 'local_bloc.freezed.dart';

class LocalBloc extends Bloc<LocalEvents, LocalStates> {
  final LocalRepo repo;

  LocalBloc({ required this.repo }): super(const LocalStates.loading()) {
    on<LocalEvents>((event, emit) async {
      await event.when(
        loadAllData: () => _loadAllData(emit),
        addData: (newData) => _addTodo(emit, newData),
        editData: (editedData) => _editData(emit, editedData),
        deleteData: (deletingDataID) => _deleteData(emit, deletingDataID),
        clearAllData: () => _clearAllData(emit)
      );
    });
  }

  /// Асинхронная функция загрузки данных с БД приложения
  Future<void> _loadAllData(Emitter<LocalStates> emit) async {
    try {
      emit(const LocalStates.loading());
      final data = await repo.loadAllData();
      emit(LocalStates.loaded(data: data));
    } catch (e) {
      emit(LocalStates.errorLoading(error: e.toString()));
    }
  }

  /// Асинхронная функция добавления новой записи в БД приложения
  Future<void> _addTodo(Emitter<LocalStates> emit, Resource newData) async {
    try {
      emit(const LocalStates.loading());
      final data = await repo.addData(newData);
      emit(LocalStates.loaded(data: data));
    } catch (e) {
      emit(LocalStates.errorLoading(error: e.toString()));
    }
  }

  /// Асинхронная функция редактирования имеющейся записи в БД приложения
  Future<void> _editData(Emitter<LocalStates> emit, Resource editedData) async {
    try {
      emit(const LocalStates.loading());
      final data = await repo.editData(editedData);
      emit(LocalStates.loaded(data: data));
    } catch (e) {
      emit(LocalStates.errorLoading(error: e.toString()));
    }
  }

  /// Асинхронная функция удаления записи по ее ID из БД приложения
  Future<void> _deleteData(Emitter<LocalStates> emit, int deletingDataID) async {
    try {
      emit(const LocalStates.loading());
      final data = await repo.deleteData(deletingDataID);
      emit(LocalStates.loaded(data: data));
    } catch (e) {
      emit(LocalStates.errorLoading(error: e.toString()));
    }
  }

  /// Асинхронная функция очистки всей БД приложения.
  Future<void> _clearAllData(Emitter<LocalStates> emit) async {
    try {
      emit(const LocalStates.loading());
      await repo.clearAllData();
      emit(const LocalStates.loaded(data: []));
    } catch (e) {
      emit(LocalStates.errorLoading(error: e.toString()));
    }
  }
}