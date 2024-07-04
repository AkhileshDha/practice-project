import 'package:flutter/material.dart';

import '../Screen_helper/customer_details.dart';
import 'loan_status_approved.dart';
class SelectRequirementScreen extends StatefulWidget {
  static const routesName='SelectRequirementScreen';
  const SelectRequirementScreen({super.key});

  @override
  State<SelectRequirementScreen> createState() => _SelectRequirementScreenState();
}

class _SelectRequirementScreenState extends State<SelectRequirementScreen> {
  double _currentvalue=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("CREDITBEE",
          style: TextStyle(
              fontWeight: FontWeight.w700
          ),
        textAlign: TextAlign.center,

        ),
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text('''Please Select Your Amount
Tenure As Per Your Requirements''', style: TextStyle(
                    fontSize: 17.0
                  ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const CustomTextField(
                    labelText: "Select Amount",
                    hintText: "10rs",
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Slider(
                    value: _currentvalue,
                    min: 0,
                    max: 20000,
                    divisions: 5,
                    label: _currentvalue.toString(),
                    onChanged: (double value){
                      setState(() {
                        _currentvalue=value;
                        if(_currentvalue <0){
                          _currentvalue = 0;
                        }else if(_currentvalue > 500000){
                          _currentvalue = 500000;
                        }else{
                          _currentvalue = value;
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const CustomTextField(
                    labelText: "Select tenure",
                    hintText: "John",
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoanStatusApprovedScreen()));
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
      ),
    );
  }
}
