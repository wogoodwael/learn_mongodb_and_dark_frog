import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(Handler handler, {SecurityContext? securityContext}) {
  return serve(handler, InternetAddress.loopbackIPv4, 8080);
}
