import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: MasonryGridView.builder(
          itemCount: 9,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
          itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child:ClipRRect(borderRadius: BorderRadius.circular(12),
            child: Image.network('https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg?cs=srgb&dl=pexels-simon-berger-1266810.jpg&fm=jpg')
            ),
         ),
       ),
     ),
    );
  }
}
