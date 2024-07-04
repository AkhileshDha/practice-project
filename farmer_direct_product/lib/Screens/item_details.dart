import 'package:farmer_direct_product/Screens/profile_page.dart';
import 'package:flutter/material.dart';
class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Item Details", style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  color: Colors.white,
                ),
                child: Icon(Icons.person,color: Colors.green,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: Colors.white,
              ),
              child: Icon(Icons.shopping_cart_outlined,color: Colors.green,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: Colors.white,
              ),
              child: Icon(Icons.search_sharp,color: Colors.green,),
            ),
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
                image: AssetImage("images/mirchi.png")),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Row(
                children: [
                  Icon(Icons.favorite_border,color: Colors.green,),
                  Text("Wish List")
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share,color: Colors.green,),
                  Text("Share")
                ],
              ),
              Row(
                children: [
                  Icon(Icons.density_small,color: Colors.green,),
                  Text("Similar Product")
                ],
              )
            ],),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mirchi",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
                Text("2kg")
              ],
            )

          ],
        ),
      ),
    );
  }
}
