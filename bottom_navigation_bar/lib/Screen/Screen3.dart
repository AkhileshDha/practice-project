import 'package:flutter/material.dart';
class Colour3 extends StatefulWidget {
  const Colour3({super.key});

  @override
  State<Colour3> createState() => _Colour3State();
}

class _Colour3State extends State<Colour3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 150,
        color: Colors.orange,
      ),
    );
  }
}
