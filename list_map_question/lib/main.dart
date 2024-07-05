import 'package:flutter/material.dart';

void main() {
  MyList list = MyList();
  var a = list.getSort();
  runApp(MyApp(data: a));
}

class MyApp extends StatelessWidget {
  final List<int> data;
  const MyApp({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index].toString()),
            );
          },
        ),
      ),
    );
  }
}

class MyList {
  List<int> studentId = [102, 502, 303, 204, 402 ,48,23,1];
  List<int> getSort() {
    studentId.sort();
    return studentId;
  }
}
