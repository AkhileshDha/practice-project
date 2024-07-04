import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/card.dart';
import 'package:food_delivery/Screens/myprofile.dart';
import 'package:food_delivery/Screens/profile_details.dart';

import 'Screens/checkout.dart';
import 'Screens/checkout_payment.dart';
import 'Screens/detail.dart';
import 'Screens/drawer_setting.dart';
import 'Screens/history.dart';
import 'Screens/home.dart';
import 'Screens/login.dart';
import 'Screens/my_offer.dart';
import 'Screens/no_internet_connection.dart';
import 'Screens/not_found.dart';
import 'Screens/order.dart';
import 'Screens/search.dart';
import 'Screens/splash_home.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'SplashScreen',
          routes: {
            'SplashScreen':(context)=>const SplashScreen(),
            'LoginScreen':(context)=> const LoginScreen(),
            'SettingDrawerScreen':(context)=> const SettingDrawerScreen(),
            // 'HomeScreen':(context)=> const HomeScreen(),
            'HistoryScreen':(context)=> const HistoryScreen(),
            'OrderScreen':(context)=> const OrderScreen(),
            'SearchScreen':(context)=> const SearchScreen(),
            'MyProfileScreen':(context)=> const MyProfileScreen(),
            'DetailsScreen':(context)=> const DetailsScreen(),
            'NotFoundScreen':(context)=> const NotFoundScreen(),
            'NoInternetConnectionScreen':(context)=> const NoInternetConnectionScreen(),
            'CheckoutDeliveryScreen':(context)=> const CheckoutDeliveryScreen(),
            'CheckoutPaymentScreen':(context)=> const CheckoutPaymentScreen(),
            'CardScreen':(context)=> const CardScreen(),
            'MyOfferScreen':(context)=> const MyOfferScreen(),
            'ProfileDetailsScreen':(context)=> const ProfileDetailsScreen(),
          },
        )
    );
  }
}
