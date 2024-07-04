import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/home.dart';
class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        color: const Color(0xFFCFCFCF),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("My Profile",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.0
              ),),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Personal Details",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0
                  ),),
                  Text("changes",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange
                  ),)
                ],
              ),
              const SizedBox(
                height: 10.0,),
              Container(
                height: 150.0,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 100.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            image: const DecorationImage(
                                image: AssetImage("images/profileimage.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Marvis Ighedosa",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                            "dosamarvis@gmail.com"),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("+234 9011039271"),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('''No 15 uti street off ovie palace
          road effurun delta state''')
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,),
              MyContainer(
                htr: 55.0,
                wtr: MediaQuery.sizeOf(context).width,
                write: "Order",
                icondata: Icons.arrow_forward_ios,
              ),
              const SizedBox(height: 10.0,),
              MyContainer(
                htr: 55.0,
                wtr: MediaQuery.sizeOf(context).width,
                write: "Pending review",
                icondata: Icons.arrow_forward_ios,
              ),
              const SizedBox(height: 10.0,),
              MyContainer(
                htr: 55.0,
                wtr: MediaQuery.sizeOf(context).width,
                write: "Faq",
                icondata: Icons.arrow_forward_ios,
              ),
              const SizedBox(height: 10.0,),
              MyContainer(
                htr: 55.0,
                wtr: MediaQuery.sizeOf(context).width,
                write: "Help",
                icondata: Icons.arrow_forward_ios,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Update',
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

class MyContainer extends StatelessWidget {
 final double? htr;
 final double?wtr;
 final String? write;
 final IconData? icondata;
  const MyContainer({super.key,this.htr,this.wtr,this.write,this.icondata});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: htr,
      width: wtr,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(write!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            Icon(icondata!)
          ],
        ),
      ),
    );
  }
}
