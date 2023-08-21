import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class Counter {
//   static int count = 0; // A static variable to keep track of the count

//    static void increment() {
//     count++;
//   }
// }

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static int count = 0; // A static variable to keep track of the count
  static void increment() {
    count++;
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Static Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Count:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '${count}', // Accessing the static variable
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                   increment(); // Calling the static method
                  });    
                },
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
