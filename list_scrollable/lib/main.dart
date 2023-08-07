//!List Scrollable --ListView--GridView--
import 'package:flutter/material.dart';
void main() {
  runApp(MyListApp());
}

class MyListApp extends StatelessWidget {
  final List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes', 'Watermelon', 'Mango','Papaya','Lemon', 'Guava','Pomgranate', 'Kiwi', 'Jackfruit', 'Mulberry', 'Lychee', 'Pear', 'Raspberries', 'Sapota', 'strawberry '];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
          backgroundColor: Color.fromARGB(255, 177, 36, 146),
          title: const Text('List Scrollable Demo'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(fruits[index]),
            );
          },
        ),
        // body: GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //    crossAxisCount: 2, // Number of columns
        //   ),
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //    return Card(
        //     child: Center(
        //      child: Text(fruits[index]),
        //     ),
        //   );
        //   },
        // )
      ),
    );
  }
}

