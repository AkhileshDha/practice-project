import 'package:flutter/material.dart';
class AppTextField extends StatelessWidget {
  final String? hint;
  final double? radis;
  final Color? clr;
  const AppTextField({super.key,required this.hint,this.radis,this.clr});
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: TextField(
        decoration: InputDecoration(
        hintText: hint !=null?"hint!":"Full Name",
        prefixIcon: IconButton(
        onPressed: (){}, icon: Icon(Icons.person),
    ),
    border: OutlineInputBorder(
    borderRadius:radis !=null?BorderRadius.circular(radis!):BorderRadius.circular(8.0),
    borderSide: BorderSide(
        color: Colors.black
        ),
    )
    ),
        ),
    );
  }
}
