import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/search.dart';

class OrderScreen extends StatefulWidget {
  static const routesName = 'OrderScreen';
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        color: const Color(0xFFCFCFCF),
        width: MediaQuery.of(context).size.width,
        child: Center( // Wrap Column with Center to avoid overflow
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 170.0,
              ),
              const Icon(
                Icons.shopping_cart,
                size: 120.0,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Not orders yet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                '''Hit the orange button down
   below to Create an order''',
                textAlign: TextAlign.center, // Center align the text
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Next Step >',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
