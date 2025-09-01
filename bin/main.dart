import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

void main() async {
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = Router()..all('/', _rootHandler);
  await serve(handler, InternetAddress.anyIPv4, port);
  print('Server running on port $port');
}

Future<Response> _rootHandler(RequestContext context) async {
  return Response(body: 'Hello, Dart Frog!');
}
