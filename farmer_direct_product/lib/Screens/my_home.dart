import 'package:farmer_direct_product/Screens/grid_list.dart';
import 'package:farmer_direct_product/Screens/login_screen.dart';
import 'package:farmer_direct_product/Screens/profile_page.dart';
import 'package:farmer_direct_product/helper/home_Container.dart';
import 'package:farmer_direct_product/slider/slider_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      title: Text("Home"),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  color: Colors.white,
                ),
                child: Icon(Icons.person,color: Colors.green,),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SliderScreen(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Favorite cooking Essentials",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("View All",style: TextStyle(
                    color: Colors.orange
                  ),)
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(
                      width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Favorite cooking Essentials",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  Text("View All",style: TextStyle(
                      color: Colors.orange
                  ),)
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(
                      width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                    SizedBox(width: 10.0,),
                    HomeFirstContainer(
                      image1: AssetImage("images/logo.png"),
                      txt1:"Furits",
                      txt2: "299.00\n 600 off",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Favorite cooking Essentials",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GirdListScreen()));
                    },
                    child: Text("View All",style: TextStyle(
                        color: Colors.orange
                    ),),
                  )
                ],
              ),
              Row(
                children: [
                  MyColoum3(imagesapp: AssetImage("images/mirchi.png"),
                  tel: "Fruits and\nVegetables",
                  htr: 100.0,
                  wtr: 100.0,),
                  SizedBox(width: 20,),
                  MyColoum3(imagesapp: AssetImage("images/mirchi.png"),
                  tel: "Fruits and \nVegetables",
                  htr: 100.0,
                  wtr: 100.0,),
                  SizedBox(
                    width: 20.0,
                  ),
                  MyColoum3(imagesapp: AssetImage("images/mirchi.png"),
                  tel: "Fruits and\nVegetables",
                  htr: 100.0,
                  wtr: 100.0,),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
class MyColoum3 extends StatelessWidget {
  final double? htr;
  final double? wtr;
  final AssetImage imagesapp;
  final String? tel;
  const MyColoum3({super.key, this.htr, this.wtr, required this.imagesapp, this.tel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: htr,
          width: wtr,
          child: Image(image: imagesapp,
              fit: BoxFit.cover
          ),
        ),
        SizedBox(height: 10,),
        Text(tel!,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17.0,
        ),)
      ],
    );
  }
}