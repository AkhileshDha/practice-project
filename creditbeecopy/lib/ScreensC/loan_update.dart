import 'package:flutter/material.dart';

import 'instant_loan_guide.dart';
class LoanUpdateScreen extends StatefulWidget {
  static const routesName='LoanUpdateScreen';
  const LoanUpdateScreen({super.key});

  @override
  State<LoanUpdateScreen> createState() => _LoanUpdateScreenState();
}

class _LoanUpdateScreenState extends State<LoanUpdateScreen> {
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
        title: const Text("LOAN UPDATE",
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
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 350,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Column(
                        children: [
                          const SizedBox(height: 70,),
                          const Text(
                            '''We are extremely sorry to inform you that 
our Lender Partners have made a decision to
hold back your application. We've captured
your interest and will try our best to get back
shortly with an offer.
We thank you for your patience. 
 ''',style: TextStyle(fontSize: 14),),
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
                              const Text(
                                '''90% of the users who have applied after 1 month
have been approved.''',
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
                              const Text('''You can also apply after 1 month                           ''',
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
                              const Text('''At that time you do not have to pay any fees.       ''',
                                style: TextStyle(
                                    fontSize: 12.0
                                ),)
                            ],

                          )

                        ],
                      ),
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
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 45,
                          child: Icon(
                            Icons.thumb_up_alt,
                            size: 50,
                            color: Color(0xFFFF623D),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InstantLoanGuideScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(60, 60), // Full width button
                ),
                child: const Text(
                  '>>',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
