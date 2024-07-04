import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/no_internet_connection.dart';
class NotFoundScreen extends StatefulWidget {
  static const routesName='NotFoundScreen';
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Spicy chickens",
          style: TextStyle(fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
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
                Icons.search_rounded,
                size: 120.0,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Item not found',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const Text(
                '''Try something the item with
  a different keyword''',
                textAlign: TextAlign.center, // Center align the text
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NoInternetConnectionScreen()));
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
            ],
          ),
        ),
      ),
    );
  }
}
