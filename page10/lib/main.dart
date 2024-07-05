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
          title: const Text("flutter Demo project 10"),
        ),
        body:  SingleChildScrollView(
          child: Container(
            color: Colors.red,
                padding: const EdgeInsets.all(16.0),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 150.0,
                          width: 130.0,
                          child: Image.asset("images/dd1.jpg")
                      ),
                      const Text("Get On Board!",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0
                        ),),
                      const Text("Create your profile to start your Journey.",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),),
                      const SizedBox(
                        height: 5.0,
                      ),
                       TextField(
                          decoration: InputDecoration(
                              hintText: 'Full Name',
                              prefixIcon: IconButton(
                                onPressed: (){}, icon: const Icon(Icons.person),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                      color: Colors.black
                                  )

                              )
                          ),
                        ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Email',
                            prefixIcon: IconButton(
                              onPressed: (){}, icon: const Icon(Icons.mail),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black
                                )

                            )
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Phone No',
                            prefixIcon: IconButton(
                              onPressed: (){}, icon: const Icon(Icons.phone),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black
                                )

                            )
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            prefixIcon: IconButton(
                              onPressed: (){}, icon: const Icon(Icons.document_scanner_outlined),
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.remove_red_eye),
                              onPressed: (){},
                            ),
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black
                                )

                            )
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            color: Colors.black
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("SIGNUP",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0
                            ),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Center(
                          child: Text("OR")),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            border: Border.all(
                                color: Colors.black,
                                width: 1.0
                            )

                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.g_mobiledata),
                            Text("Sign-in with Google",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0
                            ),),
                          ],
                        ),
                      ),
                      const InkWell(
                        child: Row(
                          children: [
                            Text("Already have an Account?",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            ),),
                            Text("LOGIN",style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
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
