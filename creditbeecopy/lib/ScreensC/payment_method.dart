import 'package:flutter/material.dart';

import 'loan_approved.dart';
class PaymentMethodScreen extends StatefulWidget {
  static const routesName='PaymentMethodScreen ';
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
      body: Container(
        color: Color(0xFFEFECE9),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("GST",
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
                  Text("Service Tax",
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
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Amount",
                    style: TextStyle(
                        fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),),
                  Text("Rs 2500",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                  ),)
                ],
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
                height: 20.0,
              ),
              Text("Choose payment option"),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image(image: AssetImage("images/phonepe.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("PHONEPE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                        
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image(image: AssetImage("images/gpay.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("GPAY",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image(image: AssetImage("images/paytm.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("PAYTM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),)

                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                  '''                  Payment immediately 59min 45sec'''),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoanApprovedScreen ()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Pay',
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
