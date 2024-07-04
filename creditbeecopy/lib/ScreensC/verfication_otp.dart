import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'basic_details.dart';
class VerficationOTPScreen extends StatefulWidget {
  const VerficationOTPScreen({super.key});

  @override
  State<VerficationOTPScreen> createState() => _VerficationOTPScreenState();
}

class _VerficationOTPScreenState extends State<VerficationOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            color:  const Color(0xFFEFECE9),
            child: Padding(
              padding:  EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text("CREDITBEE",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0,
                    ),),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text("OTP Send",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0,
                    ),),
                  const Text("Please enter 6 digit OTP number below ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                    ),),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 62,
                        width:50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black,
                                )
                            )
                        ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                      SizedBox(
                        height: 62,
                        width:50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black,
                                )
                            )
                        ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                      SizedBox(
                        height: 62,
                        width:50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black,
                                )
                            )
                        ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                      SizedBox(
                        height: 62,
                        width:50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black,
                                )
                            )
                        ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                      SizedBox(
                        height: 62,
                        width:50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black,
                                )
                            )
                        ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                      SizedBox(
                        height: 62,
                        width:50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.black,
                                )
                            )
                        ),
                          style: Theme.of(context).textTheme.headlineSmall,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const BasicDetailsScreen()));
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
                ],
              ),
            ),
          ),
        )
    );
  }
}
