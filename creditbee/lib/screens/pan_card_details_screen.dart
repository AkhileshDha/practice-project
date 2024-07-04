import 'package:creditbee/screens/select_amount_and_tenure.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../helpers/text_fields/drop_down_input_field.dart';
import '../helpers/text_fields/form_fields_with_radio_buttons.dart';
import '../helpers/text_fields/normal_text_field.dart';

class PanCardDetailsScreen extends StatefulWidget {
  static const routeName = 'PanCardDetailsScreen';
  const PanCardDetailsScreen({super.key});

  @override
  State<PanCardDetailsScreen> createState() => _PanCardDetailsScreenState();
}

class _PanCardDetailsScreenState extends State<PanCardDetailsScreen> {

  String? _dropdownValue;
  String? _dropdownValueforIncome;
  bool chkBoxVal1 = false;
  bool chkBoxVal2 = false;
  bool chkBoxVal3 = false;

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('PAN CARD DETAILS',style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 18
        ),),
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
              //////////First i/p field first name
              const CustomTextFormField(
                labelText: 'Pan card Number',
                hintText: 'BLUPG988T',
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  'As per your PAN Card',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              //////////First i/p field first name

              const SizedBox(height: 12),
              const CustomTextFormField(
                labelText: 'Date of Birth',
                hintText: '12/12/1998',
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  'As per your PAN Card',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


              const SizedBox(height: 12),
              const CustomTextFormField(
                labelText: 'Pin Code',
                hintText: '110001',
              ),




              const SizedBox(height: 32),
              Container(
                height: MediaQuery.of(context).size.height/15,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),

                          value: chkBoxVal1, // Set this to a state variable in a stateful widget
                          onChanged: (bool? value) {
                            setState(() {
                              chkBoxVal1 = !chkBoxVal1;
                              chkBoxVal2 = false;
                              chkBoxVal3 = false;
                            });
                          },
                        ),
                        const Text('Male'),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),

                          value: chkBoxVal2, // Set this to a state variable in a stateful widget
                          onChanged: (bool? value) {
                            setState(() {
                              chkBoxVal2 = !chkBoxVal2;
                              chkBoxVal1 = false;
                              chkBoxVal3 = false;
                            });
                          },
                        ),
                        const Text('Female'),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),

                          value: chkBoxVal3, // Set this to a state variable in a stateful widget
                          onChanged: (bool? value) {
                            setState(() {
                              chkBoxVal3 = !chkBoxVal3;
                              chkBoxVal1 = false;
                              chkBoxVal2 = false;
                            });
                          },
                        ),
                        const Text('Other'),
                      ],
                    ),
                  ],
                ),
              ),



              const Spacer(),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SelectAmountAndTenureScreen()));
                  // Handle login button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Submit',
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
