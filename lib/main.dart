import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<void> main() async {
  final localDb = Db("mongodb://127.0.0.1:27017/learn");

  try {
    await localDb.open();

    print('Connected to local database');

    final users = await localDb.collection("users").find().toList();
    print('Found ${users.length} users in local database');
    print(users);
  } catch (e) {
    print('Error: $e');
  } finally {
    await localDb.close();
  }
}

