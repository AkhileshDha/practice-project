import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/card.dart';
import 'package:food_delivery/Screens/myprofile.dart';
class CheckoutPaymentScreen extends StatefulWidget {
  static const routesName='CheckoutPaymentScreen';
  const CheckoutPaymentScreen({super.key});

  @override
  State<CheckoutPaymentScreen> createState() => _CheckoutPaymentScreenState();
}

class _CheckoutPaymentScreenState extends State<CheckoutPaymentScreen> {
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
                "Payment",style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),),
              const Text(
                "Payment Method",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0

              ),),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 160.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30.0,),
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
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Colors.orange,
                            ),
                            child: const Icon(Icons.credit_card),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text("Card")
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,),
                      Container(
                        height: 2,
                        width: 310.0,
                        color: Colors.black12,
                      ),
                      const SizedBox(
                        height: 10,),
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
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Colors.pink,
                            ),
                            child: const Icon(Icons.food_bank_outlined),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text("Bank account")
                        ],
                      ),
                    ],
                  )
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Delivery Method",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 150.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30.0,),
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
             const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CardScreen()));
                },
                onLongPress: (){
                  showDialog(context: context,
                      builder: (context)=> AlertDialog(
                    title: Text("Please Note",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.grey
                    ),
                    ),
                        content: Container(
                          height: 140.0,
                          width: MediaQuery.sizeOf(context).width,
                          child: Column(
                            children: [
                              Text(
                                  "Delivery to Mainland"),
                              Text(
                                " N1000 - N2000",style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              Container(
                                height: 2,
                                width: 150.0,
                                color: Colors.black12,
                              ),
                              Text(
                                  "Delivery to island"),
                              Text(
                                " N2000 - N3000",style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("cancel",
                                  style: TextStyle(
                                    color: Colors.blue
                                  ),),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfileScreen()));
                                    },
                                    style:ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange
                                    ),
                                    child: const Text(
                                      'proceed',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                  )
                  );
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
