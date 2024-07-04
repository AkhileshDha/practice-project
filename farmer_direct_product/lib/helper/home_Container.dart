import 'package:farmer_direct_product/helper/count_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeFirstContainer extends StatefulWidget {
   final String? txt1;
   final String? txt2;
   AssetImage image1;

   HomeFirstContainer({super.key,this.txt1, this.txt2,required this.image1});

  @override
  State<HomeFirstContainer> createState() => _HomeFirstContainerState();
}

class _HomeFirstContainerState extends State<HomeFirstContainer> {
   int myindex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.0),
        color: Color(0xFFCFCFCF)
      ),
      child: Column(
        children: [
          Image(image:widget.image1,
          height: 60,
          width: 60,),
          Text(widget.txt1!),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.txt2!,
              style: TextStyle(
                fontSize: 12
              ),),
            MylistScreen(),
            ],
          )
        ],
      ),
    );
  }
}


class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: Colors.red
          )
        ),
        child: Text("Add",style: TextStyle(
          color: Colors.red
        ),
        textAlign: TextAlign.center,),
    );
  }
}

//couting


// Row file

class MylistScreen extends StatefulWidget {
  const MylistScreen({super.key});

  @override
  State<MylistScreen> createState() => _MylistScreenState();
}

class _MylistScreenState extends State<MylistScreen> {
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              myindex--;
            });
          },
          child: Container(
            height: 20.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green
            ),
            child: Icon(Icons.remove,size: 15,),
          ),
        ),
        SizedBox(width: 5,),
        Text(myindex.toString()),
        SizedBox(
          width: 5,),
        GestureDetector(
          onTap: (){
            setState(() {
              myindex++;
            });
          },
          child: Container(
            height: 20.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green
            ),
            child: Icon(Icons.add,size: 15,),
          ),
        ),
      ],
    );
  }
}

