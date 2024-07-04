import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/myprofile.dart';
class SearchScreen extends StatefulWidget {
  static const routesName='SearchScreen';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCFCFCF),
        leading: Icon(Icons.arrow_back_ios),
        title: Text("spicy chicken"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFCFCFCF),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('''Found 6 result''',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0
                ),),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 200,
                          width: 150,
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
                    SizedBox(
                      height: 20.0 ,
                      width: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 70.0, 0.0, 0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 200,
                            width: 150,
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 200,
                          width: 150,
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
                    SizedBox(
                      height: 20.0 ,
                      width: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 70.0, 0.0, 0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 200,
                            width: 150,
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 200,
                          width: 150,
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
                    SizedBox(
                      height: 20.0 ,
                      width: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 70.0, 0.0, 0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 200,
                            width: 150,
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfileScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Start ordering',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
