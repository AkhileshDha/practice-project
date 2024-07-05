import 'package:farmer/widgets/maps.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> name = ["jan", "feb", "mar", "Apr", "May", "June"];
  List<int> number = [10, 20, 30, 40];
  @override
  // void initState() {
  //   super.initState();
  //   //number.sort();
  //   //number.replaceRange(0, 3, [1, 2, 3]);
  //   number.add(68);
  //   //number.addAll(number1);
  //   //number.insert(1, 66);
  //   //number.removeAt(3);
  //   //number.removeRange(1, 3);
  //   //number.length;
  //   //number.first;
  //   //number.removeLast();
  //   //bool isEmpty=number.isEmpty;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("$name"),
            Text("$number"),
            MyMapPage()
          ],
        ),
      ),
    );
  }
}