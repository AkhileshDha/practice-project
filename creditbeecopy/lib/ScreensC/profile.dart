import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  static const routesName='ProfileScreen';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
            size: 15,),
          onPressed: (){},
        ),
        title: const Text("PROFILE",
          style: TextStyle(
              fontWeight: FontWeight.w700
          ),),
        actions: [
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.5),
              color: const Color(0xffEFECE9),
            ),
            child: const Icon(Icons.person,
              size: 18,),
          ),
          const SizedBox(
            height: 50.0,
          )
        ],
      ),
      body: Container(
        color: Color(0xFFD9D9D9),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                     height: 80.0,
                     width: 80.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40.0),
                       color: Colors.red,
                       image: DecorationImage(
                         image: AssetImage("images/person.png"),
                         fit: BoxFit.cover
                       )
                     ),
                   ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("Robert James",
                          style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold

                          ) ,),
                        Row(
                          children: [
                            Text("Loan record"),
                            SizedBox(
                              width: 30.0,
                            ),
                            Text("Repayment plan")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.star),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("Feedback",
                  style: TextStyle(
                    fontSize: 17
                  ),)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.settings),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("Setting",
                    style: TextStyle(
                        fontSize: 17
                    ),)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.message),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("Message centre",
                    style: TextStyle(
                        fontSize: 17
                    ),)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.info_sharp),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("About us",
                    style: TextStyle(
                        fontSize: 17
                    ),)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.phone),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("Contact us",
                    style: TextStyle(
                        fontSize: 17
                    ),)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.security),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("Privacy policies",
                    style: TextStyle(
                        fontSize: 17
                    ),)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.file_open),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("Terms & condition",
                    style: TextStyle(
                        fontSize: 17
                    ),)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDCDAD7),
                    ),
                    child: Icon(Icons.clean_hands_rounded),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell
                    (child: Text("Refund policy",
                    style: TextStyle(
                        fontSize: 17
                    ),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
