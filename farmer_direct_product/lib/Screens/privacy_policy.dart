import 'package:flutter/material.dart';
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFF1B5E20),
        title: Text("Privacy Policy",style: TextStyle(
            color: Colors.white
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 25,
              width: 25.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Icon(Icons.person,color:Color(0xFF1B5E20) ,),),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('''Privacy Policy''',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23
            ),),
            Text('''Direct from farmers is an Indian Grocery Delivery
Store, 1st time in Narasaraopet where we deliver
almost everthing right from Groceries, Stationery,
products etc.'''),
            SizedBox(height: 10.0,),
            Text(
              '''What is Direct from farmers?''',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
            ),),
            Text('''Direct from farmers is an Indian Grocery Delivery
Store, 1st time in Narasaraopet where we deliver
almost everthing right from Groceries, Stationery,
products etc.'''),
            SizedBox(height: 10.0,),
            Text(
              '''What Direct from farmers?''',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
            ),),
            Text('''Direct from farmers is an Indian Grocery Delivery
Store, 1st time in Narasaraopet where we deliver
almost everthing right from Groceries, Stationery,
products etc.'''),
            SizedBox(height: 10.0,),
            Text(
              '''How can we place the order?''',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
            ),),
            Text('''Direct from farmers is an Indian Grocery Delivery
Store, 1st time in Narasaraopet where we deliver
almost everthing right from Groceries, Stationery,
products etc.'''),
            SizedBox(height: 10.0,),

            RichText(
              text:  TextSpan(
                text: '''Where do we operate?\n''',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
                children: [
                  TextSpan(
                      text:'''Right now we are operating in'''
                  ),
                  TextSpan(
                    text:'''Narasaraopet ''',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
