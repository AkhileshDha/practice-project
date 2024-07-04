import 'package:flutter/material.dart';

import 'login.dart';
class SplashScreen extends StatefulWidget {
  static const routesName='SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        color: const Color(0xFFFF470B),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45.0),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage("images/logo.png"),
                    fit: BoxFit.contain
                  )
              
                ),
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Food for Everyone",
              style: TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
            Container(
              height: 240.0,
              width: MediaQuery.sizeOf(context).width,
             color: const Color(0xffff470),
              child:const Image(image: AssetImage("images/logo1.png",),
                fit: BoxFit.cover,),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  minimumSize: const Size(180,60), // Full width button
                ),
                child: const Text(
                  'Get Starred',
                  style: TextStyle(
                    color: Color(0xFFFF470B),
                    fontSize: 16,
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
