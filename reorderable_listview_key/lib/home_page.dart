import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> myTiles = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ19CWSASJ1eL8DvGcyZiVzdVWTnpbDrfemRA&usqp=CAU',
    'https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-03/220302-fitbit-ionic-al-0759-f287df.jpg',
    'https://cdn.pixabay.com/photo/2017/07/31/18/29/laptop-2559792_1280.jpg',
    'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1680532546-32gb-mp3-player-with-bluetooth-642ae43ddf5a1.jpg?crop=1xw:1xh;center,top&resize=980:*',
  ];

  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }

      final String tile = myTiles.removeAt(oldIndex);
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Re-Orderable ListView")),
      body: ReorderableListView(
        padding: const EdgeInsets.all(10),
        children: [
          for (final tile in myTiles)
            Padding(
              key: ValueKey(tile),
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey[200],
                child: Image.network(tile), 
                height: 200,
                width: 300,// Display image using Image.network
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          updateMyTiles(oldIndex, newIndex);
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomePage()));
}
