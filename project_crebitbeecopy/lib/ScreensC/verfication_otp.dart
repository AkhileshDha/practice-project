import 'package:flutter/material.dart';
class VerficationOTPScreen extends StatefulWidget {
  static const routeName='VerficationOTPScreen';
  const VerficationOTPScreen({super.key});

  @override
  State<VerficationOTPScreen> createState() => _State();
}

class _State extends State<VerficationOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              color:  const Color(0xFFEFECE9),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text("CREDITBEE",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 35.0,
                      ),),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text("OTP Sent",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25.0,
                      ),),
                    const Text("Please enter 6 digit OTP number below ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                      ),),
                    const SizedBox(
                      height: 30,
                    ),
                    VerficationOTPScreen(),

                    const SizedBox(
                      height: 470.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF623D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: const Size(double.infinity, 50), // Full width button
                      ),
                      child: const Text(
                        'Submit',
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
          )
      ),
    );
  }
}
