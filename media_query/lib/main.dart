import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MediaQuery POC')),
        body: Center(
          child: MediaQueryColorChanger(),
        ),
      ),
    );
  }
}

class MediaQueryColorChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the device orientation using MediaQuery
    Orientation orientation = MediaQuery.of(context).orientation;
    
    // Determine the background color based on the device orientation
    Color backgroundColor = orientation == Orientation.portrait
        ? Colors.lightBlue
        : Colors.black;

    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text(
          'Device Orientation: ${orientation.toString()}',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
