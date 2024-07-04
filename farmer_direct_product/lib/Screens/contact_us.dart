import 'package:flutter/material.dart';
class ContactUsScreen extends StatefulWidget {
  static const routesName='ContactUsScreen';
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar : AppBar(
    backgroundColor: Color(0xFF1B5E20),
    title: Text("Contact Us",style: TextStyle(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Contact Us",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23.0,

          ),),
          Text('''If you have any questions about this Privacy Policy,
You can contact us:
        By email:info@directfromFarmers.in
Privacy Policy for Direct From Farmers''',style: TextStyle(
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
