import 'dart:io';

Future<void> main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
  print('Listening on ${server.address}:${server.port}');

  await for (HttpRequest request in server) {
    if (request.method == 'GET' && request.uri.path == '/cloud') {
      final response = request.response;
      response.statusCode = HttpStatus.ok;
      response.headers.contentType = ContentType.text;
      response.write('Люблю облака');
      await response.close();
    } else {
      final response = request.response;
      response.statusCode = HttpStatus.notFound;
      response.headers.contentType = ContentType.text;
      response.write(':(');
      await response.close();
    }
  }
}

