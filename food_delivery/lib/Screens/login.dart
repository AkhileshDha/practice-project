
import 'package:flutter/material.dart';

import 'home.dart';
class LoginScreen extends StatefulWidget {
  static const routesName='LoginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFCFCFCF),
          child: Column(
            children: [
              Container(
              height: 250,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40.0)),
              color: Colors.white
          ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      children: [
                        const Image(
                            image: AssetImage("images/logo.png")),
                        const SizedBox(height: 40.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  height: 2.0,
                                  width: 50.0,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                // Add functionality to switch to sign-up page
                              },
                              child: const Text(
                                'Sign-up',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
        
        ),
              const SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                  height: 20.0),
        
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                  height: 10.0),
              // Forgot Password Link
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      // Add functionality to reset password
                    },
                    child: const Text(
                      'Forgot passcode?',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
             const SizedBox(
               height: 123,
             ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
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
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              ),
          ]
            ),
        ),
      )
    );
  }
}

