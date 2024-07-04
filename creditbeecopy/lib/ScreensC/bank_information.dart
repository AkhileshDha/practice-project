import 'package:flutter/material.dart';

import '../Screen_helper/customer_details.dart';
import 'congratulations_bank.dart';
class BankInformationScreen extends StatefulWidget {
  static const routesName="BankInformationScreen";
  const BankInformationScreen({super.key});

  @override
  State<BankInformationScreen> createState() => _BankInformationScreenState();
}

class _BankInformationScreenState extends State<BankInformationScreen> {
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
          title: const Text("BANK INFORMATION",
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
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            color: const Color(0xffEFECE9),
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70.0,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.white
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.light_mode,color: Colors.red,
                          size: 40.0,),
                          SizedBox(
                            width: 18,
                          ),
                          Text('''Please be sure to input the correct bank card 
information so that the loan can be obtained..''')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const CustomTextField(
                      labelText: "Bank account number",
                      hintText: "John",
                    ),
                    const SizedBox(
                      height:20.0,
                    ),
                    const CustomTextField(
                      labelText: "IFSC Code",
                      hintText: "John",
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomTextField(
                      labelText: "Bank Name",
                      hintText: "John",
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CongratulationBankScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF623D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: const Size(double.infinity, 50), // Full width button
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        )
    );
  }
}

