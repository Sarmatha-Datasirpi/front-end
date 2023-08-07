import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    home:MyApp(),
    debugShowCheckedModeBanner: false,
   )
  );
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (){
            print('Shara');
          },
        ),
        title: const Text('AppBar Demo'),
        
        actions:<Widget>[
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.more_vert_sharp),
          )
        ],
        flexibleSpace:const SafeArea(
          child:Icon(
            Icons.camera,
            color: Colors.white,
            size: 20.0,
          )
        ),
        bottom:PreferredSize(
          child:Container(
            color: Colors.grey,
            height: 75.0,
            width: double.infinity,
            child: Text(
              'Home page',
              style: TextStyle(
                color:Colors.white,
                fontSize: 25.4,
              ),
            ),
          ),
           preferredSize:const Size.fromHeight(75.0),
        ),
      ),
      body: const Center(
        child:Text('Welcome',
              style: TextStyle(
                color:Colors.black,
                fontSize: 28.4,
              ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: (){
          
        },
       
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}