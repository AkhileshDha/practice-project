import 'package:flutter/material.dart';
import 'ScreensC/login_screen.dart';
import 'ScreensC/verfication_otp.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'VerficationOTPScreen',
      routes: {
        'LoginScreen':(context)=>const LoginScreen(),
        'VerficationOTPScreen':(context)=>const VerficationOTPScreen(),
      },
    );
  }
}
