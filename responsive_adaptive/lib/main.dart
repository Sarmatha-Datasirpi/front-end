import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Responsive & Adaptive Layout')),
        body: SafeArea(
          child: Center(
            child: ContainerWithResponsiveCard(),
          ),
        ),
      ),
    );
  }
}

class ContainerWithResponsiveCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // double.infinity = constraints.maxWidth * 0.8;
        // double.infinity = constraints.maxHeight * 0.3;
        bool isNarrowScreen = constraints.maxWidth < 600;

        return Center(
          child: Card(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.computer,
                    size: isNarrowScreen ? 64 : 128,
                  ),
                  SizedBox(height: 16),
                  Text(
                    isNarrowScreen ? 'Narrow Screen' : 'Wide Screen',
                    style: TextStyle(fontSize: isNarrowScreen ? 20 : 30),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
