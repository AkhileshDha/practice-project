import 'package:flutter/material.dart';
class Colour2 extends StatefulWidget {
  const Colour2({super.key});

  @override
  State<Colour2> createState() => _Colour2State();
}

class _Colour2State extends State<Colour2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 150,
        color: Colors.green,
      ),
    );
  }
}
