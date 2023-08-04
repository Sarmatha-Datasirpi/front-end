import 'package:flutter/material.dart';
import 'package:routes/home_screen.dart';
import 'package:routes/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorful Routes',
      theme: ThemeData(
        primaryColor: Colors.blue, // Customize your theme colors
        hintColor: Colors.pink,
        fontFamily: 'Roboto', // Use your desired font
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}
