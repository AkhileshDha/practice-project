import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  static const routesName='NotificationScreen';
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B5E20),
        title: Text("Notification",style: TextStyle(
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
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.add_alert_outlined,size: 90.0,),
            Text(
              "No Notifications Found!",style: TextStyle(
                fontSize: 24.0,
            ),),
            Text('''You have no any notification yet!'''),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(4))
              ),
              child:Text("Shop Now",style: TextStyle(
                  color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
