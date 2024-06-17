import 'package:store_passwords_app/bloc/local_bloc/models/resource.dart';
import 'package:store_passwords_app/bloc/local_bloc/repo/hive_database.dart';

class LocalRepo {
  final DatabaseService db;

  LocalRepo(this.db);

  Future<List<Resource>> loadAllData() async {
    return await db.getAllResources();
  }

  Future<List<Resource>> addData(Resource newData) async {
    return await db.addResource(newData);
  }

  Future<List<Resource>> editData(Resource editedData) async {
    return await db.updateResource(editedData);
  }

  Future<List<Resource>> deleteData(int id) async {
    return await db.deleteResource(id);
  }

  Future<void> clearAllData() async {
    await db.clearTable();
  }
}
