import 'package:country_code_picker/country_code_picker.dart';
import 'package:creditbeecopy/ScreensC/verfication_otp.dart';

import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
 static const routeName='LoginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phonecontroller=TextEditingController();
  bool chkval=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color:  const Color(0xFFEFECE9),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                const Text("CREDITBEE",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35.0,
                ),),
                const SizedBox(
                  height: 20.0,
                ),
                const Text("Login your account",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                  ),),
                const Text("Login to your account and get instant loan ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                  ),),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const CountryCodePicker(
                        onChanged: print,
                        initialSelection: 'In',
                        favorite: ['+91'],
                        showCountryOnly: false,
                        flagWidth: 12,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.70,
                        child: TextField(
                          decoration: InputDecoration(

                            hintText: "Mobile Number",
                            suffixIcon: const SizedBox(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:const BorderSide(
                                color: Colors.black,
                              ),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
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
                    const Text('I agree to the terms & conditions'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VerficationOTPScreen() ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
