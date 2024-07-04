import 'package:flutter/material.dart';
class CardScreen extends StatefulWidget {
  static const routesName='CardScreen';
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("CART",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: Colors.white,
              ),
              child: Icon(Icons.person,color: Colors.green,),
            ),
          )
        ],
      ),
      body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             CircleAvatar(
               radius: 40,
               backgroundImage: AssetImage("images/img.png"),
               backgroundColor: Colors.transparent,
             ),
              Text(
                "Your Cart is Empty",style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),),
              Text('''You have no items in your shopping cart.
          let's go buy something!'''),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(4))
                ),
                  child:Text("Shop Now",style: TextStyle(
                      color: Colors.white
                    ),),
                  )
            ],
          ),
      ),
    );
  }
}
