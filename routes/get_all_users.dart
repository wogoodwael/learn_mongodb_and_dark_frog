import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<Response> onRequest(RequestContext context) async {
  final db = Db("mongodb://127.0.0.1:27017/learn");
  try {
    await db.open();
    final collection = db.collection('users');
    final users = await collection.find().toList();
    return Response.json(body: users);
  } catch (e) {
    return Response.json(statusCode: 500, body: {'error': e.toString()});
  } finally {
    await db.close();
  }
}
