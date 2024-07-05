import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
 final  double? ht;
 final double? wt;
 final  Color? clr;
 final  Widget? chld;
 final double? rdius;
  const MyContainer({super.key,  required this.ht, required this.wt, required this.clr, this.chld, this.rdius});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: ht,
      width: wt,
      
      decoration: BoxDecoration(
        color: clr,
        borderRadius: rdius != null?BorderRadius.circular(rdius!):BorderRadius.circular(10),
      ),
      child: chld,
    );
  }
}
