import 'package:flutter/material.dart';

import 'my_offer.dart';

class CardScreen extends StatefulWidget {
  static const routesName = "CardScreen";
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFCFCFCF),
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("Cart"),
      ),
      body: Container(
        color: const Color(0xFFCFCFCF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/finger.png")),
                Text("swipe on an item to delete")
              ],
            ),
            const SizedBox(height: 10.0),
            MyContainer(
              images: const AssetImage("images/food1.png"),
              write: "Veggie tomato mix",
              write1: "#1900",
            ),
            const SizedBox(
              height: 10.0,
            ),
            MyContainer(
              images: AssetImage("images/food2.png"),
              write: "Fish with mix orange",
              write1: "#1900",
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyOfferScreen()));
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
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final AssetImage? images;
  final String? write;
  final String? write1;

  MyContainer({super.key, this.images, required this.write, this.write1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            images != null
                ? CircleAvatar(
              backgroundImage: images!,
              radius: 50,
            )
                : CircleAvatar(
              radius: 50,
              child: Icon(Icons.image_not_supported), // Placeholder icon
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40.0),
                Text(
                  write!,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      write1!,
                      style: const TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(width: 70.0),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.orange,
                        ),
                        child: const Text(
                          '   - 1 +',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
