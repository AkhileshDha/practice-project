import 'package:creditbeecopy/ScreensC/update_information.dart';
import 'package:flutter/material.dart';
class LoanApprovedScreen extends StatefulWidget {
  static const routesName='LoanApprovedScreen';
  const LoanApprovedScreen({super.key});

  @override
  State<LoanApprovedScreen> createState() => _LoanApprovedScreenState();
}

class _LoanApprovedScreenState extends State<LoanApprovedScreen> {
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
        title: const Text("LOAN REQUEST",
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
      body:Container(
        color: const Color(0xFFD9D9D9),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const SizedBox(height: 40),
                          const Text(
                            '''It’s take 2-4 Working days to transfer the
money to your bank account ''',style: TextStyle(fontSize: 15),),
                          const SizedBox(height: 10,),
                          const Text(
                            '''(Saturday &  Sunday is non-working days) ''',style: TextStyle(fontSize: 15),),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.5),
                                color: Colors.black
                                )
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              const Text('''The fee paid by you is non-refundable, and it is
also mentioned in our terms and conditions''',
                              style: TextStyle(
                                fontSize: 12.0
                              ),)
                            ],

                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 15.0,
                                  width: 15.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.5),
                                      color: Colors.black
                                  )
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              const Text('''You have to wait till the loan amount  is credit-
 -ed to you and if there are any 
requirements,we willlet you know in the app''',
                                style: TextStyle(
                                    fontSize: 12.0
                                ),)
                            ],

                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 15.0,
                                  width: 15.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.5),
                                      color: Colors.black
                                  )
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              const Text('''For this you keep checking the app after some
time.''',
                                style: TextStyle(
                                    fontSize: 12.0
                                ),)
                            ],

                          )
                        ],
                      ),
      )
                    );
    //               );
    //               const Positioned  (
    //                 top: -40, // Adjust this value to move the CircleAvatar inside the visible area
    //                 left: 0,
    //                 right: 0,
    //                 child: Align(
    //                   alignment: Alignment.topCenter,
    //                   child: CircleAvatar(
    //                     radius: 60,
    //                     backgroundColor: Colors.white,
    //                     child: CircleAvatar(
    //                       backgroundColor: Colors.black12,
    //                       radius: 45,
    //                       child: Icon(
    //                         Icons.info_sharp,
    //                         size: 50,
    //                         color: Color(0xFFFF623D),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           ElevatedButton(
    //             onPressed: () {
    //               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateInformationScreen ()));
    //             },
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: const Color(0xFFFF623D),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(30),
    //               ),
    //               minimumSize: const Size(60, 60), // Full width button
    //             ),
    //             child: const Text(
    //               '>>',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 16,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
