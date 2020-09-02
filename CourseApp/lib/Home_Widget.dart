import 'package:flutter/material.dart';
import 'package:CourseApp/Home_Widget.dart';
import 'package:CourseApp/placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
  ];
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Wendix'),
      ),
      body: _children [_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap:  onTabTapped,
        currentIndex: _currentIndex,
        items: [BottomNavigationBarItem(
          icon:  Icon(Icons.home),
          title: Text ('Home'),
        ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.mail),
            title: Text ('Messages'),
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person),
            title: Text ('Profile'),
          ),],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}