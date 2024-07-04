import 'package:flutter/material.dart';
class Colour1 extends StatefulWidget {
  const Colour1({super.key});

  @override
  State<Colour1> createState() => _Colour1State();
}

class _Colour1State extends State<Colour1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
          width: 150,
          color: Colors.red,
      ),
    );
  }
}
