import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool chkval = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Signup"),
            actions:const [
              Icon(Icons.cancel_outlined)
          ]
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.account_box_sharp),
                    onPressed: (){},
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9.0),
                    borderSide: const BorderSide(
                      color: Colors.black26,
                      width: 2

                    )
                  )
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.mail),
                      onPressed: (){},
                    ),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: const BorderSide(
                            color: Colors.black26,
                            width: 2

                        )
                    )
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
               Row(
                children: [
                  const SizedBox(width: 10.0,),
                  Checkbox(
                      value: chkval,
                      onChanged: (val){
                        val = chkval;
                        setState(() {
                              chkval = !chkval;
                        });
                      }
                  ),
                  const Text("I agree to Zomato's"),
                  const Text("Terms od Service,Privacy",style: TextStyle(color: Colors.red),),

                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: const Row(
                  children: [
                    Text("policy and"),
                    SizedBox(width: 2.0,),
                    Text("Content Policies",style: TextStyle(color: Colors.red),)
                  ],
                ),
              ),
              Container(
                height: 50.0,
                  width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(9.0),

                ),
                child: TextButton(onPressed: (){},
                    child: const Text("Create Account",style: TextStyle(color: Colors.white),)),
              ),
              const Text(
                  "--------------------or----------------------"),
              Container(
                height: 40.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  border: Border.all(
                    color: Colors.black26,
                    width: 1.0
                  )
                ),
                child: const Icon(Icons.g_mobiledata_outlined,color: Colors.redAccent,),
              ),
              const Text(
                  "---------------------------------------------"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account?"),
                  Text("Login",style: TextStyle(
                    color: Colors.red
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

