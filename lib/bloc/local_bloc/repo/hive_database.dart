import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_passwords_app/bloc/local_bloc/models/resource.dart';

class DatabaseService {
  final String _boxName = 'ResourceDB';

  Future<Box<Resource>> get _box async => await Hive.openBox<Resource>(_boxName);

  Future<List<Resource>> getAllResources() async {
    final box = await _box;
    return box.values.toList();
  }

  Future<List<Resource>> addResource(Resource data) async {
    final box = await _box;
    await box.add(data);
    return getAllResources();
  }

  Future<List<Resource>> updateResource(Resource updatedResource) async {
    final box = await _box;
    final key = box.keys.cast<int?>().firstWhere(
      (k) => box.get(k)?.id == updatedResource.id,
      orElse: () => null,
    );
    if (key != null) {
      await box.put(key, updatedResource);
    } else {
      throw Exception("Resource not found");
    }
    return getAllResources();
  }

  Future<List<Resource>> deleteResource(int id) async {
    final box = await _box;
    final key = box.keys.cast<int?>().firstWhere(
      (k) => box.get(k)?.id == id,
      orElse: () => null,
    );
    if (key != null) {
      await box.delete(key);
    } else {
      throw Exception("Resource not found");
    }
    return getAllResources();
  }

  Future clearTable() async {
    final box = await _box;
    await box.clear();
  }
}
