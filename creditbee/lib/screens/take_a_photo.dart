import 'package:flutter/material.dart';

class TakeAPhotoScreen extends StatefulWidget {
  static const routeName = 'TakeAPhotoScreen';
  const TakeAPhotoScreen({super.key});

  @override
  State<TakeAPhotoScreen> createState() => _TakeAPhotoScreenState();
}

class _TakeAPhotoScreenState extends State<TakeAPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'CREDITBEE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          actions: [
            // SizedBox(width: 20,)
          ],
        ),
        body: Container(
          color: Colors.deepOrangeAccent.shade200.withAlpha(20),
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
                      padding: EdgeInsets.all(16),
                      child: Container(
                        height: 500,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 80,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('''For Processing Your Funds You Have To Verify Your Face I'd''', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            ),
                            SizedBox(height: 20,),
                            Text('Take A Photo - ID Front',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                            SizedBox(height: 20,),
                            Row(children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 10,

                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(''' Place ID on a plain dark surface and\nmake sure all four corners visible.''', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              ),
                            ],)

                          ],
                        ),
                      ),
                    ),
                    Positioned(
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
                              Icons.panorama_outlined,
                              size: 50,
                              color: const Color(0xFFFF623D),
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
                    // Handle submit button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF623D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
