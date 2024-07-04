
import 'package:farmer_direct_product/Screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios,color: Colors.white,),
        backgroundColor: const Color(0xFF1B5E20),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: double.maxFinite,
        color: const Color(0xFF1B5E20),
        child: const Column(
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage("images/logocircle.png"),
            ),
            MyContainer(),
          ],
        ),
      )
    );
  }
}

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:410,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
          color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("Welcome to Direct From Framers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27.0
              ),),
            const SizedBox(
              height: 10.0,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
               initialCountryCode: 'IN', // Default country code
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (phone) {
                // Handle phone number changes
                print(phone.completeNumber);
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1B5E20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(double.infinity, 50), // Full width button
              ),
              child: const Text(
                'Send OTP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),

          ],
        ),
      ),
    );
  }
}
