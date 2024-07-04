import 'package:creditbee/screens/pan_card_details_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../helpers/text_fields/drop_down_input_field.dart';
import '../helpers/text_fields/form_fields_with_radio_buttons.dart';
import '../helpers/text_fields/normal_text_field.dart';
import 'otp_input_screen.dart';

class TellUsAboutYourselfScreen extends StatefulWidget {
  static const routeName  = 'TellUsAboutYourselfScreen';
  const TellUsAboutYourselfScreen({Key? key}) : super(key: key);

  @override
  State<TellUsAboutYourselfScreen> createState() =>
      _TellUsAboutYourselfScreenState();
}

class _TellUsAboutYourselfScreenState
    extends State<TellUsAboutYourselfScreen> {
  String? _dropdownValue;
  String? _dropdownValueforIncome;
 bool chkBoxVal = false;
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
        title: const Text('TELL US ABOUT YOURSELF',style: TextStyle(fontWeight: FontWeight.bold,
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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo.shade50,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                //////////First i/p field first name
                const CustomTextFormField(
                  labelText: 'First Name',
                  hintText: 'John',
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
                  labelText: 'Last Name',
                  hintText: 'Doe',
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
                  labelText: 'Email',
                  hintText: 'john@email.com',
                ),




                const SizedBox(height: 32),
                CustomDropdownFormField(
                  labelText: 'Education',
                  hintText: 'Select an option',
                //  prefixIcon: Icon(Icons.list),
                  items: ['Option 1', 'Option 2', 'Option 3'],
                  value: _dropdownValue,
                  onChanged: (value) {
                    setState(() {
                      _dropdownValue = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // Save selected option value
                  },
                  filled: true,
                  fillColor: Colors.transparent,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: const Text(
                    'As per your PAN Card',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),



                const SizedBox(height: 24),

                EmployeeTypeForm(),






                SizedBox(height: 30,),
                const CustomTextFormField(
                  labelText: 'Monthly Income',
                  hintText: '50000 INR',
                ),



                SizedBox(height: 30,),
                const CustomTextFormField(
                  labelText: 'Annual Family Income',
                  hintText: '500000 INR',
                ),

                const SizedBox(height: 32),
                CustomDropdownFormField(
                  labelText: 'Annual Income',
                  hintText: 'Select an option',
                  //  prefixIcon: Icon(Icons.list),
                  items: ['Up to 1 Lakh', 'Up to 3 Lakh', 'Up to 5 Lakh'],
                  value: _dropdownValueforIncome,
                  onChanged: (value) {
                    setState(() {
                      _dropdownValueforIncome = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // Save selected option value
                  },
                  filled: true,
                  fillColor: Colors.transparent,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      value: chkBoxVal, // Set this to a state variable in a stateful widget
                      onChanged: (bool? value) {
                        setState(() {
                          chkBoxVal = !chkBoxVal;
                        });
                      },
                    ),

                    RichText(
                      text: TextSpan(
                        text: '''I declare the above information is correct and true. I\nallow ''',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '''CreditBee Finance(P) LTD''',
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('''to be my authorised representetive & fetch my crerdit information from ''');
                              },
                          ),
                          TextSpan(
                            text: ''' to be my authorised \nrepresentetive & fetch my crerdit information from\n''',
                            style: TextStyle(
                              //  color: Colors.b,
                            ),
                          ),


                          TextSpan(
                            text: 'CIBIL / Experien / Equifax',
                            style: TextStyle(
                              color: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PanCardDetailsScreen()));
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
      ),
    );
  }
}