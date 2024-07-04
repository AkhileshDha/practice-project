import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/history.dart';

class HomeScreen extends StatefulWidget {
  static const routesName='HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset=0;
  double yoffset=0;
  double zoffset=0;
  bool isDrawerOpen=false;

  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(xoffset, yoffset, zoffset)..scale(isDrawerOpen? 0.76:1.00)..rotateZ(isDrawerOpen? -50:0)
      ,child: Scaffold(
        appBar: AppBar(
          leading: isDrawerOpen?GestureDetector(
            child: Icon(Icons.arrow_back_ios),
            onTap: (){
              setState(() {
                xoffset=0;
                yoffset=0;

                isDrawerOpen=false;
              });
            },):
             GestureDetector(
              child: Icon(Icons.menu),
          onTap: (){
                setState(() {
                  xoffset=300;
                  yoffset=30;

                  isDrawerOpen=true;
                });
          },),

          backgroundColor: const Color(0xFFCFCFCF),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child:Icon(Icons.shopping_cart_checkout),
            ),
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
               icon:Icon(Icons.home,color: Colors.black,),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite,color: Colors.black,),
            label: '',
              ),
          BottomNavigationBarItem(
                  icon: Icon(Icons.person,color: Colors.black,),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.watch_later_rounded,color: Colors.black,),
                  label: ''
              ),
        ]),
        body: SingleChildScrollView(
          child: Container(
            color: const Color(0xFFCFCFCF),
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '''Delicious
food  for you''',style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_rounded),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: const BorderSide(
                          color: Colors.white
                        )
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 230,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:  const Column(
                                children: [
                                  SizedBox(height: 90,),
                                  Text(
                                    '''   Veggie
      tomato mix''',style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.bold),),
                                  SizedBox(height: 20,),
                                  Text(
                                    'N1,900',style:TextStyle(
                                      color: Color(0xFFFF470B)
                                  ) ,)
                                ],
                              ),
                            ),
                            const Positioned(
                              top: -40, // Adjust this value to move the CircleAvatar inside the visible area
                              left: 0,
                              right: 0,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: AssetImage("images/food1.png"),

                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 230,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:  const Column(
                                children: [
                                  SizedBox(height: 90,),
                                  Text(
                                    '''   Veggie
      tomato mix''',style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.bold),),
                                  SizedBox(height: 20,),
                                  Text(
                                    'N1,900',style:TextStyle(
                                      color: Color(0xFFFF470B)
                                  ) ,)
                                ],
                              ),
                            ),
                            const Positioned(
                              top: -40, // Adjust this value to move the CircleAvatar inside the visible area
                              left: 0,
                              right: 0,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: AssetImage("images/food1.png"),

                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 230,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:  const Column(
                                children: [
                                  SizedBox(height: 90,),
                                  Text(
                                    '''   Veggie
      tomato mix''',style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.bold),),
                                  SizedBox(height: 20,),
                                  Text(
                                    'N1,900',style:TextStyle(
                                      color: Color(0xFFFF470B)
                                  ) ,)
                                ],
                              ),
                            ),
                            const Positioned(
                              top: -40, // Adjust this value to move the CircleAvatar inside the visible area
                              left: 0,
                              right: 0,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: AssetImage("images/food1.png"),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HistoryScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF623D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: const Size(double.infinity, 50), // Full width button
                    ),
                    child: const Text(
                      'Order Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

