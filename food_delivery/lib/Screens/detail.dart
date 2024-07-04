import 'package:flutter/material.dart';

import 'not_found.dart';
class DetailsScreen extends StatefulWidget {
  static const routesName='DetailsScreen';
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.heart_broken_outlined),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 190.0,
                width: 190.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 15,
                      offset: const Offset(0.0,25.0),
                      spreadRadius: -10
                    )
                  ]
                ),
                child: const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("images/food1.png"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Veggie tomato mix",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),),
              const Text(
                "N1,900",style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 25
              ),),

             Container(
               height: 220.0,
               width: MediaQuery.sizeOf(context).width,
               color: Colors.white,
               child: const Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Delivery info",
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 15
                     ),),
                   SizedBox(
                     height: 10.0,
                   ),
                   Text('''Delivered between monday aug and
thursday 20 from 8pm to 91:32 pm'''),
                   SizedBox(
                     height: 10.0,),
                   Text("Return policy",
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 15
                     ),),
                   SizedBox(
                     height: 15.0,
                   ),
                   Text('''All our foods are double checked before
leaving our stores so by any case you
found a broken food please contact our
hotline immediately.''')
                 ],
               ),
             ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotFoundScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
