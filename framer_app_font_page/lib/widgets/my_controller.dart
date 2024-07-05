
import 'package:flutter/material.dart';

 class MyTabBar extends StatefulWidget {
   final  TabController mycontroller;
   const MyTabBar({super.key, required this.mycontroller});

   @override
   State<MyTabBar> createState() => _MyTabBarState();
 }

 class _MyTabBarState extends State<MyTabBar> {


   @override
   Widget build(BuildContext context) {
     return TabBar(
       controller: widget.mycontroller,
         tabs: const [
           Tab(icon: Icon(Icons.home),),
           Tab(icon: Icon(Icons.book),),
           Tab(icon: Icon(Icons.category_outlined),),
           Tab(icon: Icon(Icons.person),),
         ]);
   }
 }
