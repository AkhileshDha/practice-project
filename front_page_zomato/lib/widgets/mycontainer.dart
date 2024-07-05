import 'package:flutter/material.dart';
class MyContainer extends StatelessWidget {
 final double? htr;
 final double? wtr;
 final Color? clr;
 final Widget? chld;
 final double? rdis;
 final double? horizontalpadd;
 final double? verticalpadd;
   const MyContainer ({super.key,required this.htr,required this.wtr,this.clr,this.chld,this.rdis,this.horizontalpadd,this.verticalpadd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: htr,
        width: wtr,
      padding:EdgeInsets.symmetric(horizontal: horizontalpadd!,vertical: verticalpadd!),
      decoration: BoxDecoration(
        color: clr!,
        borderRadius: rdis != null?BorderRadius.circular(rdis!):BorderRadius.circular(8.0),
      ),
      child: chld,
    );
  }
}
