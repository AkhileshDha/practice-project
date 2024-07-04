import 'package:flutter/material.dart';

import '../helpers/text_fields/drop_down_input_field.dart';
import '../helpers/text_fields/normal_text_field.dart';
import 'loan_status_approved_screen.dart';

class BankInformationScreen extends StatefulWidget {
  static const routeName = 'BankInformationScreen';
  const BankInformationScreen({super.key});

  @override
  State<BankInformationScreen> createState() => _BankInformationScreenState();
}

class _BankInformationScreenState extends State<BankInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,
       // centerTitle: true,
        leading: IconButton(onPressed: () {  },
          icon: Icon(Icons.chevron_left),),
        title: const Text('BANK INFORMATION', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Container(
        color: Colors.indigo.shade50,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Container(
                height: MediaQuery.of(context).size.height/11,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.light_mode,color:  const Color(0xFFFF623D),size: 30,),
                    ),
                    
                    Text('''Please be sure to input the correct bank card 
information so that the loan can be obtained.''')
                  ],
                ),
              ),

              const SizedBox(height: 40,),
              CustomTextFormField(
               // controller: selectAmountController,
                labelText: 'Bank account number',
              ),
              const SizedBox(height: 40,),
              CustomTextFormField(
                // controller: selectAmountController,
                labelText: 'IFSC Code',
              ),
              const SizedBox(height: 40,),
              CustomTextFormField(
                // controller: selectAmountController,
                labelText: 'Bank Name',
              ),



              Spacer(),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoanStatusApprovedScreen()));
                  // Handle submit button press
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
    );;
  }
}
