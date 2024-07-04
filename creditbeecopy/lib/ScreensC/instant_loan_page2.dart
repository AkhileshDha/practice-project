import 'package:creditbeecopy/ScreensC/take_a_photo.dart';
import 'package:flutter/material.dart';
class InstantLoanPage2 extends StatefulWidget {
  static const routesName='InstantLoanPage2';
  const InstantLoanPage2({super.key});

  @override
  State<InstantLoanPage2> createState() => _InstantLoanPage2State();
}

class _InstantLoanPage2State extends State<InstantLoanPage2> {
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
        title: const Text("INSTANT LOAN GUIDE",
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
        color: Color(0xFFD9D9D9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 140.0,
                      width:140.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(9.0),
                       color: Colors.white,
                     ),
                      child: MyColum(fieldicon: Icon(Icons.clean_hands,
                        size: 40.0,
                        color: Colors.red,),
                          write:Text("Instant Loan",
                          style: TextStyle(
                            fontSize: 18.0
                          ),)
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: 140.0,
                      width:140.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.white,
                      ),
                      child: MyColum(fieldicon: Icon(Icons.book_online_outlined,
                        size: 40.0,
                        color: Colors.red,),
                          write:Text("Loan Guide",
                            style: TextStyle(
                                fontSize: 18.0
                            ),)
                      )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: 140.0,
                      width:140.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.white,
                      ),
                      child: MyColum(fieldicon: Icon(Icons.attach_money_rounded,
                        size: 40.0,
                        color: Colors.red,),
                          write:Text("Loan Type",
                            style: TextStyle(
                                fontSize: 18.0
                            ),)
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: 140.0,
                      width:140.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.white,
                      ),
                      child: MyColum(fieldicon: Icon(Icons.maps_home_work_outlined,
                        size: 40.0,
                        color: Colors.red,),
                          write:Text("EPF Service",
                            style: TextStyle(
                                fontSize: 18.0
                            ),)
                      )
                  ),
                ),
              ],
            ),
           SizedBox(
             height: 90.0,
           ),
          ElevatedButton(
          onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TakeAPhotoScreen()));
    },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFF623D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: const Size(60, 60), // Full width button
      ),
      child: const Text(
        '>>',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),

          ],
        ),

      ),

    );
  }
}
class MyColum extends StatelessWidget {
final  Icon? fieldicon;
 final Text? write;
  const MyColum({super.key, required this.fieldicon,required this.write});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        fieldicon!,
        write!
      ],
    );
  }
}
