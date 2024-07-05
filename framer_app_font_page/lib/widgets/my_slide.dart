import 'package:flutter/material.dart';
class MySlider extends StatelessWidget {
  final double? wtr;
  final double? htr;
  AssetImage? img;
   MySlider({super.key,required this.wtr,required this.htr,this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: htr,
      width: wtr,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: img !=null?AssetImage("img!"):AssetImage("images/7.jpg"),
              fit: BoxFit.cover,
        )
      ),
    );
  }
}
