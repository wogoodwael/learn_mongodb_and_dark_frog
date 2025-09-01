import 'package:mongo_dart/mongo_dart.dart';

class Database {
  final String uri;
  Db? _db;

  Database({String? uri})
      : uri = uri ?? const String.fromEnvironment('MONGODB_URI', defaultValue: "mongodb://127.0.0.1:27017/learn",);

  Future<void> open() async {
    _db = Db(uri);
    await _db!.open();
  }

  Future<void> close() async {
    await _db?.close();
  }

  DbCollection collection(String name) {
    if (_db == null || !_db!.isConnected) {
      throw Exception('Database is not connected');
    }
    return _db!.collection(name);
  }
}
