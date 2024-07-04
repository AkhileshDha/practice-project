import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProductListScreen extends StatefulWidget {
  static const routesName='ProductListScreen';
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xFF1B5E20),
        title: const Text("Direct From Farmers",style: TextStyle(
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
              child: const Icon(Icons.person,color:Color(0xFF1B5E20) ,),),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFFCFCFCF),
          type: BottomNavigationBarType.shifting,
          onTap: (index){
            setState(() {
              myindex=index;
            });
          },
          currentIndex: myindex,
          items: const [
            BottomNavigationBarItem(
                icon:Icon(Icons.home,color: Color(0xFF1B5E20),),
                label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.border_all_outlined,color: Color(0xFF1B5E20),),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border,color: Color(0xFF1B5E20),),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart,color: Color(0xFF1B5E20)),
                label: ''
            ),
          ]),
      body: Container(
        color: const Color(0xFFCFCFCF),
        child: SingleChildScrollView(
          child: const Column(
            children: [
              MyContainer(
                imageapp: AssetImage("images/mirchi.png"),
                t1: "Guntur Mirchi",
                t2: "229 Rs  1 kg",
                t3: "229.00 Rs",
                t4: "1",
                t5: "Delete",
                t6: "Save For later",
              ),
              MyContainer(
                imageapp: AssetImage("images/mirchi.png"),
                t1: "Guntur Mirchi",
                t2: "229 Rs  1 kg",
                t3: "229.00 Rs",
                t4: "1",
                t5: "Delete",
                t6: "Save For later",
              ),
              MyContainer(
                imageapp: AssetImage("images/mirchi.png"),
                t1: "Guntur Mirchi",
                t2: "229 Rs  1 kg",
                t3: "229.00 Rs",
                t4: "1",
                t5: "Delete",
                t6: "Save For later",
              ),
              MyContainer(
                imageapp: AssetImage("images/mirchi.png"),
                t1: "Guntur Mirchi",
                t2: "229 Rs  1 kg",
                t3: "229.00 Rs",
                t4: "1",
                t5: "Delete",
                t6: "Save For later",
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
class MyContainer extends StatelessWidget {
 final AssetImage imageapp;
 final String? t1,t2,t3,t4,t5,t6;
  const MyContainer({super.key, required this.imageapp, this.t1, this.t2, this.t3, this.t4, this.t5, this.t6});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(12.0),
         color: Colors.white,
       ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: Image(image: imageapp,
                    fit: BoxFit.cover,)
                  ),
               SizedBox(
                 width: 20.0,
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    t1!,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
        ),),
                  Text(
                    t2!,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                  ),
                  Text(
                    t3!,style: TextStyle(
                    color: Color(0xFF1B5E20),
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),),
                ],
              )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 25,
                      width: 25.0,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                       child:Icon(Icons.linear_scale_outlined)
                      //Text("",
                      //   style: TextStyle(color: Color(0xFF1B5E20),
                      // ),textAlign: TextAlign.center,),),
                  ),
                  ),
                  Text(t4!,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 25,
                      width: 25.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Icon(Icons.add,color:Color(0xFF1B5E20) ,),),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(t5!,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    color: Color(0xFF1B5E20)
                  ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(t6!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      color: Color(0xFF1B5E20)
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
