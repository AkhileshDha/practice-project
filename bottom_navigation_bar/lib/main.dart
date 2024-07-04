import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/Screen/screen1.dart';
import 'package:bottom_navigation_bar/Screen/Screen2.dart';
import 'package:bottom_navigation_bar/Screen/Screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottonBar(),
    );
  }
}

class BottonBar extends StatefulWidget {
  const BottonBar({super.key});

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  var screenList = [
   Colour1(),
    Colour2(),
    Colour3()
  ];
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[myindex],
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.safety_check_outlined),
            label: 'Safety',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.security),
            label: 'Security',
          ),
        ],
      ),
    );
  }
}
