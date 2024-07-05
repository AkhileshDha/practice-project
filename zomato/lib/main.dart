import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Zomato Login",style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30.0
          ),),
          actions: [
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.cancel_outlined), label: const Text(""))
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0,
                  width: double.maxFinite,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "phone",
                      prefixIcon:IconButton(
                        icon: const Icon(Icons.flag_outlined),
                        onPressed: (){},
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: const BorderSide(
                          width: 2.0,
                          color: Colors.red
                        )
                      )
                    ),
                  ),

                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 50.0,
                  width: 280.0,
                  padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 15.0),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.redAccent
                  ),
                  child: const Text("Send One Time Password",style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                    "-----------------or---------------"),
                Container(
                  height: 50.0,
                  width: 260.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    border: Border.all(
                      width: 1.0
                    )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail,color: Colors.red,),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("Continue With Email")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0
                    )
                  ),
                  child: const Icon(Icons.g_mobiledata_sharp,color:Colors.blue,),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.maxFinite,
                  height: 1.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                ),
                const Row(
                  children: [
                    Text("New to Zomato?",style: TextStyle(color: Colors.black),),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text("Create Account",style: TextStyle(color: Colors.red),)
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
