import 'package:flutter/material.dart';
class MyContainer extends StatelessWidget {
  final double? ht;
  final double? wt;
  final Color? colr;
  final double? pp;
  final Widget? chld;
  final double? radus;
  const MyContainer({super.key,required this.ht,required this.wt,required this.colr,this.pp,this.chld,this.radus});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ht,
      width: wt,
      padding: pp !=null?EdgeInsets.all(pp!):EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colr,
        borderRadius: radus !=null?BorderRadius.circular(radus!):BorderRadius.circular(8.0),
      ),
      child: chld,
    );
  }
}
