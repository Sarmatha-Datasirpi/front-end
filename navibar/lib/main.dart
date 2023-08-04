import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:MyApp(),
    routes: {
      '/first': (context) => FirstScreen(),
      '/second': (context)=> SecondScreen(),
      '/third':(context)=> ThirdScreen(),
    },
   ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  int current_index=0;
  final List<Widget> pages = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation')),
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: _onTabTapped,
        items:[
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label: 'First'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Third',
          ),
       ]
      ),
    );
  }
  void _onTabTapped(int index){
    setState(() {
      current_index=index;
    });
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(
        onPressed:(){
          Navigator.pushNamed(context,'/first');
        },
        child: const Text('First Screen'),
      ),
    ) ;
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(
        onPressed:(){
          Navigator.pushNamed(context,'/second');
        },
        child: const Text('Second Screen'),
      ),
    ) ;
  }
}
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(
        onPressed:(){
          Navigator.pushNamed(context,'/third');
        },
        child: const Text('ThirdScreen'),
      ),
    ) ;
  }
}


