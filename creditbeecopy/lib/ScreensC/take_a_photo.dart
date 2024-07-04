import 'package:creditbeecopy/ScreensC/profile.dart';
import 'package:flutter/material.dart';
class TakeAPhotoScreen extends StatefulWidget {
  static const routesName='TakeAPhotoScreen';
  const TakeAPhotoScreen({super.key});

  @override
  State<TakeAPhotoScreen> createState() => _TakeAPhotoScreenState();
}

class _TakeAPhotoScreenState extends State<TakeAPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("CREDITBEE",
          style: TextStyle(
              fontWeight: FontWeight.w700
          ),
        textAlign: TextAlign.center,
      ),
      ),
      body:Container(
        color: const Color(0xFFD9D9D9),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      height: 300,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Column(
                        children: [
                          const SizedBox(height: 80,),
                          const Text(
                            '''For Processing Your Funds You Have To
                 Verify Your Face I'd''',style: TextStyle(fontSize: 16),),
                            const SizedBox(height: 20,),
                            const Text(
                              'Take A Photo - ID Front',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 15.0,
                                  width: 15.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.5),
                                      color: Colors.black
                                  )
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              const Text('''Place ID on a plain dark surface and make
sure all four corners visible.''',
                                style: TextStyle(
                                    fontSize: 12.0
                                ),)
                            ],

                          ),
                          const SizedBox(height: 20,),

                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: -40, // Adjust this value to move the CircleAvatar inside the visible area
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 45,
                          child: Icon(
                            Icons.contact_mail,
                            size: 50,
                            color: Color(0xFFFF623D),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
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
    );
  }
}
