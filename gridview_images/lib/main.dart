import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered GridView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StaggeredGridViewExample(),
    );
  }
}

class StaggeredGridViewExample extends StatelessWidget {
  final List<String> imageList = [
    'assets/img1.jpg',
    'assets/img2.jpeg',
    'assets/img3.jpeg',
    'assets/img4.jpg',
    'assets/img5.jpeg',
    'assets/img6.jpeg',
    'assets/img7.jpg',
    'assets/img8.jpg',
    'assets/img10.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered GridView Example'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildTile(index);
        },
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
    );
  }

  Widget _buildTile(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: Color.fromARGB(255, 1, 17, 32),
        child: Image.asset(
          imageList[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
