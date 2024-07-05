import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  get Name => "prabhu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetching Data'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          for( int i =0; i< 6; i++)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('$i'),
            ),


        ],
      ),
    );
  }
}
