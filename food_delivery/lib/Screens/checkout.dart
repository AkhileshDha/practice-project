import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/checkout_payment.dart';
class CheckoutDeliveryScreen extends StatefulWidget {
  static const routesName='CheckoutDeliveryScreen';
  const CheckoutDeliveryScreen({super.key});

  @override
  State<CheckoutDeliveryScreen> createState() => _CheckoutDeliveryScreenState();
}

class _CheckoutDeliveryScreenState extends State<CheckoutDeliveryScreen> {
  int _value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFCFCFCF),
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("Checkout"),
      ),
      body: Container(
        color: const Color(0xFFCFCFCF),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Delivery",style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Infomation",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),),
                  Text(
                    "change",style: TextStyle(
                      color: Colors.deepOrange
                  ),)
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 140.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text(
                          "Marvis Kparobo",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),),
                        Container(
                          height: 2,
                          width: 300.0,
                          color: Colors.black12,
                        ),
                        const Text('''Km 5 refinery road oppsite re
public road, effurun, delta state'''),
                        Container(
                          height: 2,
                          width: 300.0,
                          color: Colors.black12,
                        ),
                        const Text("+234 9011039271"),

                      ],
                    ),
                  )
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Delivery Method",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),),

              Container(
                  height: 160.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30.0,),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged:(value){
                              setState(() {
                                _value= value!;
                              });
                            },
                            activeColor: Colors.orange,),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text("Door delivery")
                        ],
                      ),
                      const SizedBox(height: 10.0,),
                      Container(
                        height: 2,
                        width: 310.0,
                        color: Colors.black12,
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged:(value){
                              setState(() {
                                _value = value!;
                              });
                            },
                            activeColor: Colors.pink,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text("Pick up")
                        ],
                      ),



                    ],
                  )
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total"),
                  Text("23,000",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),)
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckoutPaymentScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Proceed to payment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
