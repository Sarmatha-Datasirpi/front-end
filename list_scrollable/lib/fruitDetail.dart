import 'package:flutter/material.dart';

import 'fruitDataModel.dart';

class fruitDetail extends StatelessWidget {
  final fruitDataModel fruitdatamodel;
  const fruitDetail({Key? key,required this.fruitdatamodel}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(fruitdatamodel.name),),
      body:SingleChildScrollView(
        child: Column(
          children: [
          Image.network(fruitdatamodel.ImageUrl),
          Text(fruitdatamodel.desc),
        ],
      ),
      ),
    );
  }
}

