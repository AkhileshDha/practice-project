import 'package:creditbee/screens/otp_input_screen.dart';
import 'package:flutter/material.dart';

  import 'package:flutter/services.dart';
  import 'package:intl_phone_field/intl_phone_field.dart';

  class LogInScreen extends StatefulWidget {
    static const routeName = 'LoginScreen';
    const LogInScreen({super.key});

    @override
    State<LogInScreen> createState() => _LogInScreenState();
  }

  class _LogInScreenState extends State<LogInScreen> {
    bool chkBoxVal = false;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100), // Margin at the top
              const Text(
                'CREDITBEE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Login your account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Login to your account and get instant loan',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 30),
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
              const Spacer(), // Pushes the checkbox and button to the bottom
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    value: chkBoxVal, // Set this to a state variable in a stateful widget
                    onChanged: (bool? value) {
                      setState(() {
                        chkBoxVal = !chkBoxVal;
                      });
                    },
                  ),
                  const Text('I agree to the terms & conditions'),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const OTPScreen()));
                  // Handle login button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20), // Margin at the bottom
            ],
          ),
        ),
      );
    }
  }

