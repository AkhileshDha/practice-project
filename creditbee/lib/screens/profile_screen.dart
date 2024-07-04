import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  static const routeName = 'ProfileScreen';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        // centerTitle: true,
        leading: IconButton(onPressed: () {  },
          icon: Icon(Icons.chevron_left),),
        title: const Text('PROFILE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
         // height: double.maxFinite,
          //width: double.maxFinite,
          color: Color(0x1F0F623D),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Container(

                  height: MediaQuery.of(context).size.height/7,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/profileImg.png'),
                        ),

                        Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                              child: Text('Robert James',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(width: 25,),
                                Text('Loan Record',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                SizedBox(width: 30,),
                                Text('Loan Record',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              TextButton.icon(onPressed: (){},
                  icon: Icon(Icons.stars,), label: Text('Feedback'),),
              SizedBox(height: 20,),

              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.settings,), label: Text('Setting'),),
              SizedBox(height: 20,),

              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.message,), label: Text('Message Center'),),
              SizedBox(height: 20,),


              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.info_sharp,), label: Text('About Us'),),
              SizedBox(height: 20,),



              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.wifi_calling_sharp,), label: Text('Contact Us'),),
              SizedBox(height: 20,),

              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.security,), label: Text('Privacy Policies'),),
              SizedBox(height: 20,),

              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.note_alt,), label: Text('Terms & Conditions'),),
              SizedBox(height: 20,),


              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.attach_money_rounded,), label: Text('Refund Policy'),),
              SizedBox(height: 60,),





            ],
          ),
        ),
      ),
    );
  }
}
