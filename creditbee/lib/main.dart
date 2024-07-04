import 'package:creditbee/screens/bank_information.dart';
import 'package:creditbee/screens/loan_status_approved_screen.dart';
import 'package:creditbee/screens/login_screen.dart';
import 'package:creditbee/screens/otp_input_screen.dart';
import 'package:creditbee/screens/pan_card_details_screen.dart';
import 'package:creditbee/screens/profile_screen.dart';
import 'package:creditbee/screens/select_amount_and_tenure.dart';

import 'package:creditbee/screens/splash_screen.dart';
import 'package:creditbee/screens/take_a_photo.dart';
import 'package:creditbee/screens/tell_us_about_yourself.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'TakeAPhotoScreen(),',
      routes: {
       // '/': (context) => const SplashScreen(),
        'LoginScreen': (context) => const LogInScreen(),
        'OTPScreen' : (context) => OTPScreen(),
        'TellUsAboutYourselfScreen': (context)=> TellUsAboutYourselfScreen(),
        'PanCardDetailsScreen': (context)=> PanCardDetailsScreen(),
        'SelectAmountAndTenureScreen': (context)=> SelectAmountAndTenureScreen(),
        'LoanStatusApprovedScreen': (context)=> LoanStatusApprovedScreen(),
        'TakeAPhotoScreen': (context)=> TakeAPhotoScreen(),
        'BankInformationScreen': (context)=> BankInformationScreen(),
        'ProfileScreen': (context)=> ProfileScreen(),
      },
    );
  }
}