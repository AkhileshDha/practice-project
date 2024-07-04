import 'package:creditbeecopy/ScreensC/select_requirements.dart';
import 'package:flutter/material.dart';
import '../Screen_helper/customer_details.dart';

class PanCardDetailScreen extends StatefulWidget {
  static const routesName='PanCardDetailScreen';
  const PanCardDetailScreen({super.key});

  @override
  State<PanCardDetailScreen> createState() => _PanCardDetailScreenState();
}

class _PanCardDetailScreenState extends State<PanCardDetailScreen> {
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
          title: const Text("PAN CARD DETAILS",
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
                      height: 40.0,
                    ),
                    const CustomTextField(
                      labelText: "Pan Card Number",
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
                      labelText: "Date of Birth",
                      hintText: "John",
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const CustomTextField(
                      labelText: "Pin Code",

                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const CustomTextField(
                      labelText: "Gender",
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SelectRequirementScreen()));
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
