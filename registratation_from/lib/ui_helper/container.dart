import 'package:flutter/material.dart';

class ContainerT extends StatelessWidget {
  final String? str;
  final IconData? pp;
  final bool? sts;
   const ContainerT({super.key,required this.str,required this.pp,this.sts});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: sts!=null?sts!:false,
        decoration: InputDecoration(
          hintText: str,
            prefixIcon: IconButton(
              icon: Icon(pp),
              onPressed: (){},
            ),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(8.0),
              borderSide: const  BorderSide(
                width: 11.0
              )
            )
        ),

      ),
    );
  }
}
