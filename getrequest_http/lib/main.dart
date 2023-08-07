import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter app"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var url = Uri.https("my-json-server.typicode.com", "/typicode/demo/posts"
            );
            var response = await http.get(url);
            print("status code: ${response.statusCode}");
            print("response body: ${response.body}");
          },
          child: const Text("Http call"),
        ),
      ),
    );
  }
}