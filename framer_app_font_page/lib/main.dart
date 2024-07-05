import 'package:flutter/material.dart';
import 'package:framer_app_font_page/widgets/home_page1.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),

    );
  }
}
