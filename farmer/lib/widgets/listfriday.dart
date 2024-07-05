import 'package:flutter/material.dart';
class MyListAgain extends StatefulWidget {
  const MyListAgain({super.key});

  @override
  State<MyListAgain> createState() => _MyListAgainState();
}

class _MyListAgainState extends State<MyListAgain> {
  List<String> month=["Jan","feb","Mar","Apr","May","June","july"];
  List<int> num=[10,20,30,40];
  @override
  void initState() {
    print(month);
    month.add("Augest");
    print(num);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$month"),
        Text("$num")
      ],
    );
  }
}

