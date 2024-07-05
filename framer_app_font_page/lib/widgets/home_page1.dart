import 'package:flutter/material.dart';
import 'package:framer_app_font_page/screen_a.dart';
import 'package:framer_app_font_page/screen_b.dart';
import 'package:framer_app_font_page/screen_c.dart';
import 'package:framer_app_font_page/screen_d.dart';


import 'my_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmer Location'),
        actions: [
          IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.account_box_outlined),
              onPressed: () {}),
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.grey],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: MyTabBar(mycontroller: _controller,),
        )
      ),

      body: TabBarView(
        controller: _controller,
        children: [
        const ScreenA(),
        const ScreenB(),
        const ScreenC(),
        const ScreenD()
      ],),

    );
  }
}
