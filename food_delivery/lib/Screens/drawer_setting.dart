import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/home.dart';

import 'drawer_design.dart';
class SettingDrawerScreen extends StatefulWidget {
  static const routesName='SettingDrawerScreen';
  const SettingDrawerScreen({super.key});

  @override
  State<SettingDrawerScreen> createState() => _SettingDrawerScreenState();
}

class _SettingDrawerScreenState extends State<SettingDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen2(),
          HomeScreen(),

        ],
      ),
    );
  }
}

class DrawerScreen {
}
