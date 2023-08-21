//!List Scrollable --ListView--GridView--
import 'package:flutter/material.dart';

import 'fruitDataModel.dart';
import 'fruitDetail.dart';
void main() {
  runApp(MyListApp());
}

class MyListApp extends StatelessWidget {
  static List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes', 'Watermelon', 'Mango','Papaya','Lemon', 'Guava','Pomgranate', 'Kiwi', 'Jackfruit', 'Mulberry', 'Lychee', 'Pear', 'Raspberries', 'Sapota', 'strawberry '];
  static List url=['https://media.istockphoto.com/id/185262648/photo/red-apple-with-leaf-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=gUTvQuVPUxUYX1CEj-N3lW5eRFLlkGrU_cwwwOWxOh8=',
  'https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.webp?b=1&s=170667a&w=0&k=20&c=uiSdjIQkTr7S4gEdW_oB_5zfFYhpfe0LP-CryQl49w4=',
  'https://media.istockphoto.com/id/494037460/photo/orange-fruit-isolated-on-a-white-background.jpg?s=612x612&w=0&k=20&c=Podpyj2fviG76mCSsr3aR6O3t4o3LdkahTHSU0GBCmQ=',
  'https://media.istockphoto.com/id/1295773461/photo/purple-grape-isolated-on-white-background-clipping-path-full-depth-of-field.jpg?b=1&s=170667a&w=0&k=20&c=KcWHGIRSEHixngCbujWX2RIcCf3D1jl5g2vAYOnEC70=',
  'https://thumbs.dreamstime.com/b/big-watermelon-slice-white-background-as-package-design-element-44517200.jpg',
  'https://t4.ftcdn.net/jpg/02/71/66/91/360_F_271669174_2dHs4FO3SV83lQ4MjswEBa4LQTGjMO4E.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToXsQvPnxhkjj_TNxfo80-bBleX7GLOTvA7UgmGIfx7w&s',
  'https://image.shutterstock.com/image-photo/lemon-isolate-on-white-fruit-260nw-1923512348.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYYQPbje82DBo9nG6thY5vgjbfHBmzpB1dFc8Ou_H6&s',
  'https://static4.depositphotos.com/1020804/360/i/450/depositphotos_3604950-stock-photo-pomegranates.jpg',
  'https://media.istockphoto.com/id/834807852/photo/whole-kiwi-fruit-and-half-kiwi-fruit-on-white.jpg?s=612x612&w=0&k=20&c=zliUVnZlYPcOxEDYef7PMmOEEODFr8FUkTYqqFVaRG8=',
  'https://upload.wikimedia.org/wikipedia/commons/2/21/Ripe_jackfruit.jpg',
  'https://media.istockphoto.com/id/1188628278/photo/blackberry-with-leaf-isolated-on-a-white-background-closeup.jpg?s=612x612&w=0&k=20&c=G-Fxor7hQAMe7Eoa6h4W3Xm6Al6tc3mLon0EgKacMWA=',
  'https://media.istockphoto.com/id/1239454771/photo/lychee-with-leaves-isolated-on-white.jpg?s=612x612&w=0&k=20&c=pBz3iO7HnVffciGs9f1XFUvELeWwLonFfv_DSomNlpU=',
  'https://media.istockphoto.com/id/186861864/photo/pear-green-with-leaf.jpg?s=612x612&w=0&k=20&c=SUozClQ4PvD4o5WkYGwMeKXWLVQdGW4KtiwfBPqEl7o=',
  'https://media.istockphoto.com/id/648967314/photo/raspberry-with-leaves-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=tv_hnCyZYtY-RoUI-Mm875oMlcsF7toRjOp0lHYGVGc=',
  'https://media.istockphoto.com/id/983079288/photo/sapodilla-fruit-with-green-leaves-isolated-on-the-white-background.jpg?s=612x612&w=0&k=20&c=gv3KBdL9n0iye_UVjqekkEobWd0S3NDYtdR_8PlTWG0=',
  'https://media.istockphoto.com/id/1071084902/photo/strawberry-isolated-on-white.jpg?s=612x612&w=0&k=20&c=dnVeTnq95xEb4b1_16Vlpw6MApc9mE4ht73nVc5gQvw='
  ];
  final List<fruitDataModel> Fruitdata=List.generate(
    fruits.length,
    (index) => fruitDataModel('${fruits[index]}','${url[index]}','${fruits[index]} Description...'));

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
          itemCount: Fruitdata.length,
          itemBuilder: (context, index) {
            return Card(
              child:ListTile(
                title: Text(Fruitdata[index].name),
                leading: SizedBox(
                  width: 58,
                  height: 58,
                  child: Image.network(Fruitdata[index].ImageUrl)
                ),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>fruitDetail(fruitdatamodel:Fruitdata[index],)));
                } ,
              )
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
