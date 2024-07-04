import 'package:creditbeecopy/ScreensC/payment_method.dart';
import 'package:flutter/material.dart';
class CongratulationBankScreen extends StatefulWidget {
  static const routesName='CongratulationBankScreen';
  const CongratulationBankScreen({super.key});

  @override
  State<CongratulationBankScreen> createState() => _CongratulationBankScreenState();
}

class _CongratulationBankScreenState extends State<CongratulationBankScreen> {
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
        title: const Text("PAYMENT METHOD",
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
          color: Color(0xFFEFECE9),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
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
                      Text('''Pay the following loan taxes and fees  as
required by the tax authorities.''')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 230.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(
                       height: 15.0,
                     ),
                     Text("Congratulation !!",
                       style: TextStyle(
                       fontSize: 30.0,
                       fontWeight: FontWeight.w700,
                       color: Colors.black
                     ),),
                     Text("New loan eligbility for you has been",
                       style: TextStyle(
                           fontSize: 17.0,
                           color: Colors.black
                       ),),
                     SizedBox(
                       height: 10.0,
                     ),
                     Text("50,000 RS",
                       style: TextStyle(
                           fontSize: 30.0,
                           fontWeight: FontWeight.w700,
                           color: Colors.black
                       ),),
                     SizedBox(
                       height: 10.0,
                     ),
                     Text(
                       '''As per security tax rate rule, you get
                  18% GST need to cut''',
                       style: TextStyle(
                           fontSize: 17.0,
                           color: Colors.black
                       ),),
                   ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 70.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Your loan options"),
                      Text('''Rs.50,000/1year''',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Interst",
                    style: TextStyle(
                      fontSize: 15.0
                    ),),
                    Text("Rs 108",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Repayment amount",
                      style: TextStyle(
                          fontSize: 15.0
                      ),),
                    Text("Rs 150",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recieved amount",
                      style: TextStyle(
                          fontSize: 15.0
                      ),),
                    Text("Rs 150",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("GST",
                      style: TextStyle(
                          fontSize: 15.0
                      ),),
                    Text("Rs 150",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Next Step >',
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
