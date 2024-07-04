import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/checkout.dart';
class NoInternetConnectionScreen extends StatefulWidget {
  static const routesName='NoInternetConnectionScreen';
  const NoInternetConnectionScreen({super.key});

  @override
  State<NoInternetConnectionScreen> createState() => _NoInternetConnectionScreenState();
}

class _NoInternetConnectionScreenState extends State<NoInternetConnectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFCFCFCF),
        width: MediaQuery.of(context).size.width,
        child: Center( // Wrap Column with Center to avoid overflow
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 170.0,
              ),
              const Icon(
                Icons.signal_wifi_off_outlined,
                size: 120.0,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'No internet Connection',
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
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckoutDeliveryScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                    minimumSize: Size(260.0, 90.0), // Full width button
                  ),
                  child: const Text(
                    'Try Again',
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
