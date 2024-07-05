import 'package:farmer/widgets/listfriday.dart';
import 'package:flutter/material.dart';
class MyMapPage extends StatelessWidget {
  final Map<String, List<String>> myMap = {
    'fruits': ['apple', 'banana', 'cherry'],
    'vegetables': ['carrot', 'broccoli', 'spinach'],
    'dairy': ['milk', 'cheese', 'yogurt'],
  };
 // final Map<String,String> names={'name':"akhilesh"};

   MyMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    //var x = myMap.entries.first.value;
    var y=myMap.keys.map((e) => e).toList();
    var z=myMap.values.map((e) => e).toList();
    //var x=myMap['fruits']??"not found";
    //var y=myMap['vegetables']?[1];
    return Column(
      children: [
        //Text('${x}'),
        Text("${y[0]}"),
        Text("${y[1]}"),
        Text("${y[2]}"),
        Text("${z[0]}"),
        Text("${z[1]}"),
        Text("${z[2]}"),
        MyListAgain()

      ],
    );
  }
}