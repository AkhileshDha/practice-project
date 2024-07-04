import 'package:farmer_direct_product/Screens/card.dart';
import 'package:farmer_direct_product/Screens/faq_info.dart';
import 'package:farmer_direct_product/Screens/login_screen.dart';
import 'package:farmer_direct_product/Screens/term_and_condition.dart';
import 'package:flutter/material.dart';

import 'Screens/about_us.dart';
import 'Screens/contact_us.dart';
import 'Screens/grid_list.dart';
import 'Screens/home_funtion.dart';
import 'Screens/item_details.dart';
import 'Screens/my_home.dart';
import 'Screens/notification.dart';
import 'Screens/privacy_policy.dart';
import 'Screens/product_list.dart';
import 'Screens/profile_page.dart';
import 'Screens/sign_in_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'ItemDetailsScreen',
        routes: {
          'LoginScreen':(context)=>const LoginScreen(),
          'SignInScreen':(context)=>const SignInScreen(),
          'ProfileScreen':(context)=>const ProfileScreen(),
         'HomeScreen':(context)=> HomeScreen(),
          'CardScreen':(context)=>const CardScreen(),
          'NotificationScreen':(context)=>const NotificationScreen(),
          'ContactUsScreen':(context)=>const ContactUsScreen(),
          'AboutUsScreen':(context)=>const AboutUsScreen (),
          'ProductListScreen':(context)=>const ProductListScreen (),
          'GirdListScreen':(context)=>const GirdListScreen(),
          'FAQInfoScreen':(context)=>const FAQInfoScreen(),
          'TermsAndConditionScreen':(context)=>const TermAndConditionScreen(),
          'PrivacyPolicyScreen':(context)=>const PrivacyPolicyScreen(),
          'MyHomeScreen':(context)=>const HomeBodyScreen(),
          'ItemDetailsScreen':(context)=>const ItemDetailsScreen(),
        },
      ),
    );
  }
}
