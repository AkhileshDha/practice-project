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
        title: const Text("Item Details", style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ProfileScreen()));
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
                child: const Icon(Icons.person,color: Colors.green,),
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
              child: const Icon(Icons.shopping_cart_outlined,color: Colors.green,),
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
              child: const Icon(Icons.search_sharp,color: Colors.green,),
            ),
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
                image: AssetImage("images/mirchi.png")),
            const SizedBox(height: 10.0,),
            const Row(
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
            const SizedBox(height: 10.0,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mirchi",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
                Text("2kg")
              ],
            ),
            const Row(
              children: [
                Icon(Icons.star_border_outlined,size: 12,),
                Icon(Icons.star_border_outlined,size: 12,),
                Icon(Icons.star_border_outlined,size: 12,),
                Icon(Icons.star_border_outlined,size: 12,),
                Icon(Icons.star_border_outlined,size: 12,),
                Text("1")
                
              ],
            ),
            const Text(
              "You Save Rs 51.00",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green
            ),
            ),
            Row(
              children: [
                Text("99.00",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 5),
                Stack(
                  children: [
                    const Text("Rs150.00"),

                    Positioned(
                        bottom: 9 ,
                        right: 0,
                        left: 0,
                        child:Container(
                          height: 2,
                          width: 30.0,
                          color: Colors.black38,
                        )
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
            Container(
              height: 90,
              width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                border: Border.all(
                  color: Colors.green
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                  Text("10 Days Returnable")
                ],
              ),
            ),
                SizedBox(width: 10,),
                Container(
                  height: 90,
                  width: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      border: Border.all(
                          color: Colors.green
                      )
                  ),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        child: Icon(Icons.shopping_bag_outlined),
                      ),
                      Text("Order Can Cancel Till Order\nProcessed")
                    ],
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Text(")"Quantity
    ],
    )
    ],
    ),
    ),LLLLLLLLLLLLLLLAAAaaaassssSSSLLLLLLLLLllLLLLlllLLLL""""""""
}
