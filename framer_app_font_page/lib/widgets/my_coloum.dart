import 'package:flutter/material.dart';

class MyColoum extends StatelessWidget {
  double? htr;
  double? wtr;
  Column? chld;
   MyColoum({super.key,required this.htr, required this.wtr,this.chld});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: htr,
      width: wtr,
      child: chld,
    );
  }
}
