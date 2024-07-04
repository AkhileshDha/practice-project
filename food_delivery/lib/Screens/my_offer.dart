import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/profile_details.dart';
class MyOfferScreen extends StatefulWidget {
  static const routesName='MyOfferScreen';
  const MyOfferScreen({super.key});

  @override
  State<MyOfferScreen> createState() => _MyOfferScreenState();
}

class _MyOfferScreenState extends State<MyOfferScreen> {
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
                height: 250.0,
              ),
              const Text(
                'ohh snap!  No offers yet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                '''Bella dose’t have any offers
yet please check again.''',
                textAlign: TextAlign.center, // Center align the text
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileDetailsScreen()));
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
