import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> name=["jan","feb","mar","Apr","May","June","july","Aug","Sep","Oct","Nov","Dec"];
  void initState() {
   print(name);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          child: Column(
            children: [
              Text("$name"),

            ],
          ),
        ),
      ),
    );
  }
}
