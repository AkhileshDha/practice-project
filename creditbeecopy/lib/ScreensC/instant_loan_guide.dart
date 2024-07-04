import 'package:creditbeecopy/ScreensC/instant_loan_page2.dart';
import 'package:flutter/material.dart';
class InstantLoanGuideScreen extends StatefulWidget {
  static const routesName='InstantLoanGuideScreen';
  const InstantLoanGuideScreen({super.key});

  @override
  State<InstantLoanGuideScreen> createState() => _InstantLoanGuideScreenState();
}

class _InstantLoanGuideScreenState extends State<InstantLoanGuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                      height: 180,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Column(
                        children: [
                          const SizedBox(height: 80,),
                          const Text(
                            '''Instant Loan Guide ''',style: TextStyle(fontSize: 28,
                          fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            '''Easily apply for loan ''',style: TextStyle(fontSize: 14),),
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
                            Icons.library_books_sharp,
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InstantLoanPage2()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 2
                  )
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(

                    backgroundColor: const Color(0xFFEFECE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),

                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Share App',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(

                    backgroundColor: const Color(0xFFEFECE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),

                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(

                    backgroundColor: const Color(0xFFEFECE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),

                    ),
                    minimumSize: const Size(double.infinity, 50), // Full width button
                  ),
                  child: const Text(
                    'Rate App',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
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
