import 'package:farmer_direct_product/Screens/about_us.dart';
import 'package:farmer_direct_product/Screens/card.dart';
import 'package:farmer_direct_product/Screens/contact_us.dart';
import 'package:farmer_direct_product/Screens/faq_info.dart';
import 'package:farmer_direct_product/Screens/home_funtion.dart';
import 'package:farmer_direct_product/Screens/notification.dart';
import 'package:farmer_direct_product/Screens/privacy_policy.dart';
import 'package:farmer_direct_product/Screens/term_and_condition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login_screen.dart';
import 'my_home.dart';
class ProfileScreen extends StatefulWidget {
  static const routesName='ProfileScreen';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B5E20),
        title: Text("Profile",style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20.0,
              width: 20.0,
            )
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blueGrey,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 60,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("images/logocircle.png")
                            )
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Welcome Guest"),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                              });
                            },
                              child: Text("Login/Register")),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Container(
                  height: 551,
                  width: MediaQuery.sizeOf(context).width,
                  color: Color(0xFFCFCFCF),
                  child: Column(
                    children: [
                      SizedBox(height: 10.0,),
                     InkWell(
                       onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                       },
                         child: MyRow(icon: Icons.home_outlined, wtr:"Home", icon1: Icons.arrow_forward_ios)),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CardScreen()));
                          },
                          child: MyRow(icon: Icons.shopping_cart_outlined, wtr:"Cart", icon1: Icons.arrow_forward_ios)),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotificationScreen()));
                          },
                          child: MyRow(icon: Icons.notifications_none, wtr:"Notifications", icon1: Icons.arrow_forward_ios)),
                      SizedBox(height: 10.0,),
                      MyRow(icon: Icons.message_outlined, wtr:"Blog", icon1: Icons.arrow_forward_ios),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactUsScreen()));
                          },
                          child: MyRow(icon: Icons.contacts_outlined, wtr:"Contact Us", icon1: Icons.arrow_forward_ios)),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutUsScreen()));
                          },
                          child: MyRow(icon: Icons.info_outline, wtr:"About us", icon1: Icons.arrow_forward_ios)),
                      SizedBox(height: 10.0,),
                      MyRow(icon: Icons.star_border, wtr:"Rate us", icon1: Icons.arrow_forward_ios),
                      SizedBox(height: 10.0,),
                      MyRow(icon: Icons.share, wtr:"Share", icon1: Icons.arrow_forward_ios),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FAQInfoScreen()));
                          },
                          child: MyRow(icon: Icons.copy_rounded, wtr:"FAQ", icon1: Icons.arrow_forward_ios)),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TermAndConditionScreen()));
                          },
                          child: MyRow(icon: Icons.calendar_today, wtr:"Terms & Conditions", icon1: Icons.arrow_forward_ios)),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicyScreen()));
                          },
                          child: MyRow(icon: Icons.security_outlined, wtr:"Privacy Policy", icon1: Icons.arrow_forward_ios)),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  final IconData icon;
 final  String? wtr;
 final IconData icon1;
   MyRow({super.key, required this.icon, required this.wtr, required this.icon1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10.0,
          ),Text(wtr!),
          Spacer(),
          Icon(icon1),

      ]
      ),
    );
  }
}
