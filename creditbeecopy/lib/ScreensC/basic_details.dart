import 'package:creditbeecopy/Screen_helper/customer_details.dart';
import 'package:creditbeecopy/Screen_helper/customer_drop_down.dart';
import 'package:creditbeecopy/ScreensC/pan_card_detail.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class BasicDetailsScreen extends StatefulWidget {
  static const routesName='BasicDetailsScreen';
  const BasicDetailsScreen({super.key});

  @override
  State<BasicDetailsScreen> createState() => _BasicDetailsScreenState();
}

class _BasicDetailsScreenState extends State<BasicDetailsScreen> {
  String? _dropdownValue;
  String? _dropdownValueforIncome;
  bool chkval=false;
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
        title: const Text("TELL US ABOUT YOURSELF",
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
          SizedBox(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const CustomTextField(
                  labelText: "First Name",
                  hintText: "John",
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                    "As per your PAN Card"),
                const SizedBox(
                  height: 10.0,
                ),
                const CustomTextField(
                  labelText: "Last Name",
                  hintText: "John",
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const CustomTextField(
                  labelText: "Email",
                  hintText: "John",
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomDropdownFormField(
                  labelText: "Education",
                  hintText: "John",
                  items: const ["Option1","Option2","Option3"],
                  value: _dropdownValue,
                  onChanged: (value){
                    setState(() {
                      _dropdownValue=value;
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
                const SizedBox(
                  height: 15.0,
                ),
                const CustomTextField(
                  labelText: "Your Employee Type",
                  hintText: "John",
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const CustomTextField(
                  labelText: "Monthly Income",
                  hintText: "5000rs",
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const CustomTextField(
                  labelText: "Annual Family Income",
                  hintText: "John",
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomDropdownFormField(
                  labelText: "Annual Income",
                  hintText: "50000",
                  items: const ["1lakh","2lakh","3lakh"],
                  value: _dropdownValueforIncome,
                  onChanged: (value){
                    setState(() {
                      _dropdownValueforIncome=value;
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
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      value: chkval, // Set this to a state variable in a stateful widget
                      onChanged: (bool? value) {
                        setState(() {
                          chkval = !chkval;
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
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PanCardDetailScreen()));
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
