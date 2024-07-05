import 'package:flutter/material.dart';
//coloum 2
class MenuContainer extends StatelessWidget {
  final double? htr;
  final double? wtr;
  final String? str;
  const MenuContainer({super.key, required this.htr,required this.wtr,this.str,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height:htr ,
            width: wtr,
            decoration: const BoxDecoration(
              color: Colors.black26,
             image: DecorationImage(image: AssetImage("images/dd1.jpg")),
            ),
          ),
        ),
        if(str !=null)
          Text(str!,style:const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w700,
            color: Colors.black
          ),)
      ],
    );
  }
}

//coloum 3
class MyColoum3 extends StatelessWidget {
  final double? htr;
  final double? wtr;
  final double? radis;
  final String? str;
  final String? str2;
  const MyColoum3({super.key,required this.wtr,required this.htr,this.radis,this.str,this.str2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: htr,
      width: wtr,
      decoration: BoxDecoration(
        borderRadius: radis !=null?BorderRadius.circular(radis!):BorderRadius.circular(9.0),
        border: Border.all(
          width: 1.0,
        color: Colors.black),
        image:const DecorationImage(image: AssetImage("images/dd1.jpg"),
        fit: BoxFit.cover)
      ),
child: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(str !=null)
              Text(str!,
              style: const TextStyle(
                color: Colors.white
              ),),
           const SizedBox(
                width: 20.0),
            if(str2 !=null)
              Text(str2!, style:const TextStyle(
                  color: Colors.white),)
          ],
        ),
      ),
      Container(
        height: 20.0,
        width: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          color: Colors.white
        ),
        child: const Text("SHOP",style:
        TextStyle(
          fontWeight: FontWeight.w700,
        ),),
      )
    ],
  ),
),
    );
  }
}

//coloum 4
 class MyColoum5 extends StatelessWidget {
  final double? htr;
  final double? wtr;
  final Color? col;
  final String? str;
   const MyColoum5({super.key,required this.wtr,required this.htr,this.col,this.str});

   @override
   Widget build(BuildContext context) {
     return Container(
           height: htr,
           width: wtr,
           color: col,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const SizedBox(
                 width:8.0 ,
               ),
               if(str != null)
               Text(str!,
               style: const TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.w900,

               ),),
               const SizedBox(
                 width: 10.0,
               ),
               Container(
                 height: 20.0,
                 width: 2.0,
                 color: Colors.white24,
               ),
               const SizedBox(
                 width: 15.0,
               ),
               const Column(
                 children: [
                   SizedBox(height: 10.0,),
                   Text("10% Instant Discount",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.w500,
                       fontSize: 10.0
                     ),),
                   Text("ON CREDIT & DEBIT CARDS",
                   style: TextStyle(
                     fontSize: 6.0,
                     color: Colors.white
                   ),),
                   Text("Click To know More >",
                   style: TextStyle(
                     fontSize: 3.0,
                     color: Colors.white
                   ),)
                 ],
               )
             ],
           ),
         );



   }
 }

 //coloum 6
class MyComing extends StatelessWidget {
  final double? htr;
  final double? wtr;
  const MyComing({super.key, this.wtr,this.htr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: htr,
      width: wtr,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.0),
        border: Border.all(
          color: Colors.black,
          width: 2.0
        )
      ),
      child: const Row(
        children: [
          Text("UpComing Deal",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 20.0
          ),),
          Text("MIN. 45% OFF*",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20.0
            ),)
        ],
      ),
    );
  }
}



