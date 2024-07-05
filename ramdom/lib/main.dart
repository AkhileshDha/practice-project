import 'package:flutter/material.dart';

import 'Screens/home_Screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        initialRoute: 'HomeScreen',
        routes: {
          'HomeScreen': (context) => HomeScreen(),
        }
      ),
    );
  }
}
