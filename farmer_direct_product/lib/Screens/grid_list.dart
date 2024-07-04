import 'package:flutter/material.dart';
class GirdListScreen extends StatefulWidget {
  static const routesName='GridListScreen';
  const GirdListScreen({super.key});

  @override
  State<GirdListScreen> createState() => _GirdListScreenState();
}

class _GirdListScreenState extends State<GirdListScreen> {
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B5E20),
        title: const Text("Direct From Farmers",style: TextStyle(
            color: Colors.white
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 25,
              width: 25.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Icon(Icons.person,color:Color(0xFF1B5E20) ,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 25,
              width: 25.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Icon(Icons.shopping_cart,color:Color(0xFF1B5E20) ,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 25,
              width: 25.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Icon(Icons.search_sharp,color:Color(0xFF1B5E20) ,),),
          )

        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 3,
        children: [
          MyColoum3(
            htr: 60,
              wtr: 100,
              tel: "fruits and vegetables",
              imagesapp: AssetImage("images/vege.png"),),
          MyColoum3(
            htr: 60,
            wtr: 100,
            tel: "fruits and vegetables",
            imagesapp: AssetImage("images/vege.png"),),
          MyColoum3(
            htr: 60,
            wtr: 100,
            tel: "fruits and vegetables",
            imagesapp: AssetImage("images/vege.png"),),
          MyColoum3(
            htr: 60,
            wtr: 100,
            tel: "fruits and vegetables",
            imagesapp: AssetImage("images/vege.png"),),
          MyColoum3(
            htr: 60,
            wtr: 100,
            tel: "fruits and vegetables",
            imagesapp: AssetImage("images/vege.png"),),
          MyColoum3(
            htr: 60,
            wtr: 100,
            tel: "fruits and vegetables",
            imagesapp: AssetImage("images/vege.png"),),
          MyColoum3(
            htr: 60,
            wtr: 100,
            tel: "fruits and vegetables",
            imagesapp: AssetImage("images/vege.png"),),
          MyColoum3(
            htr: 60,
            wtr: 100,
            tel: "fruits and vegetables",
            imagesapp: AssetImage("images/vege.png"),),

        ],),
      ) ,

    );
  }
}
class MyColoum3 extends StatelessWidget {
 final double? htr;
 final double? wtr;
  final AssetImage imagesapp;
  final String? tel;
  const MyColoum3({super.key, this.htr, this.wtr, required this.imagesapp, this.tel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: htr,
        width: wtr,
        child: Image(image: imagesapp,
        fit: BoxFit.cover
        ),
        ),
        SizedBox(height: 10,),
        Text(tel!,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17.0,
        ),)
      ],
    );
  }
}
