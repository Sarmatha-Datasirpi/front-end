import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 167, 29, 75)),
        useMaterial3: true,
      ),
      home: MyAppParent(),
       // Use MyAppParent as the home content
    );
  }
}

class MyAppParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: MyApp_1(), // Use MyApp_1 as the body content
    );
  }
}

class MyApp_1 extends StatefulWidget {
  const MyApp_1({Key? key}) : super(key: key);

  @override
  State<MyApp_1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp_1> {
  String value = 'Test';

  void clickMe() {
    setState(() {
      value = "Sara";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('$value'),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: clickMe,
        ),
      ],
    );
  }
}
