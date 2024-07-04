import 'package:flutter/material.dart';

import 'detail.dart';
class MyProfileScreen extends StatefulWidget {
  static const routesName='MyProfileScreen';
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  int _value= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFCFCFCF),
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("My profile"),
      ),
      body: Container(
        color: const Color(0xFFCFCFCF),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,),
                const Text(
                  "Infomation",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                ),),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 140.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              image: const DecorationImage(
                                  image: AssetImage("images/profileimage.png"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Marvis Ighedosa",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                          ),),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("dosamarvis@gmail.com"),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('''No 15 uti street off ovie palace
            road effurun delta state''')
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Payment Method",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                ),),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 250.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30.0,),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged:(value){
                                setState(() {
                                  _value= value!;
                                });
                          },
                          activeColor: Colors.orange,),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Colors.orange,
                            ),
                            child: const Icon(Icons.credit_card),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text("Card")
                        ],
                      ),
                      const SizedBox(height: 10.0,),
                      Container(
                        height: 2,
                        width: 310.0,
                        color: Colors.black12,
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged:(value){
                                setState(() {
                                  _value = value!;
                                });
                          },
                            activeColor: Colors.pink,
                          ),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Colors.pink,
                            ),
                            child: const Icon(Icons.food_bank_outlined),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text("Bank account")
                        ],
                      ),
                      const SizedBox(height: 10.0,),
                      Container(
                        height: 2,
                        width: 310.0,
                        color: Colors.black12,
                      ),
                      const SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Radio(
                              value: 3, groupValue: _value, onChanged:(value){
                                setState(() {
                                  _value=value!;
                                });
                          },
                            activeColor: Colors.blue,
                          ),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Colors.blue,
                            ),
                            child: const Icon(Icons.paypal),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text("Paypal")
                        ],
                      ),
            
                    ],
                  )
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailsScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF623D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: const Size(double.infinity, 50), // Full width button
                    ),
                    child: const Text(
                      'Update',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
