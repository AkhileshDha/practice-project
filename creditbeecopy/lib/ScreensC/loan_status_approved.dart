import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bank_information.dart';

class LoanStatusApprovedScreen extends StatefulWidget {
  static const routeName = 'LoanStatusApprovedScreen';
  const LoanStatusApprovedScreen({super.key});

  @override
  State<LoanStatusApprovedScreen> createState() => _LoanStatusApprovedScreenState();
}

class _LoanStatusApprovedScreenState extends State<LoanStatusApprovedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'CREDITBEE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          actions: [
            // SizedBox(width: 20,)
          ],
        ),
        body: Container(
          color: Color(0xFFCFCFCF),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        height: 350,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(height: 60,),
                              Text('Great',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                              Text('Loan Approved',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                              Text('Below Is Your Summary',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Interest rate'),
                                  Text('4% per annum'),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Loan Amount'),
                                  Text('50,000'),


                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Tenure'),
                                  Text('1 Year'),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Total Loan Amount',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                              Text('₹ 50,000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -45, // Adjust this value to move the CircleAvatar inside the visible area
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
                              Icons.verified,
                              size: 50,
                              color: const Color(0xFFFF623D),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BankInformationScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
