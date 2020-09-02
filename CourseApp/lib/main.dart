import 'package:flutter/material.dart';
import 'package:CourseApp/Home_Widget.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Home(),
    );
  }
}

