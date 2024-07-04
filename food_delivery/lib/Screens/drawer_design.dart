
import 'package:flutter/material.dart';
class DrawerScreen2 extends StatefulWidget {
  const DrawerScreen2({super.key});

  @override
  State<DrawerScreen2> createState() => _DrawerScreen2State();
}

class _DrawerScreen2State extends State<DrawerScreen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyColoum(
              str: "Profile",
              icondata: Icons.person,
            ),
            MyColoum(
              str: "Order",
              icondata: Icons.shopping_cart_checkout,
            ),
            MyColoum(icondata:Icons.save,
            str: "offer and promo",),
            MyColoum(str: "Privacy policy",
            icondata: Icons.restore_page_rounded,),
            MyColoum(
              str: "Security",
              icondata: Icons.shield,
            ),
            Spacer(),
            Text("Sign-out ->",
            style: TextStyle(
              color: Colors.white,fontSize: 20,
              fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );
  }
}
class MyColoum extends StatelessWidget {
  final String? str;
  final IconData? icondata;
  const MyColoum({super.key,this.icondata,this.str});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icondata!,
              color: Colors.white,
              size: 20,),
              SizedBox(width: 5.0,),
              Text(str!,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),)
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 2,
            width: 100.0,
            color:Colors.white24,
          ),         ],
      ),
    );
  }
}
