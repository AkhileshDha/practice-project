import 'package:creditbeecopy/Screen_helper/customer_details.dart';
import 'package:flutter/material.dart';

import 'account_statement.dart';
class UpdateInformationScreen extends StatefulWidget {
  static const routesName='UpdateInformationScreen';
  const UpdateInformationScreen({super.key});
  @override
  State<UpdateInformationScreen> createState() => _UpdateInformationScreenState();
}

class _UpdateInformationScreenState extends State<UpdateInformationScreen> {
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
          title: const Text("UPDATE INFORMATION",
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
            height: MediaQuery.sizeOf(context).height,
            color: const Color(0xffEFECE9),
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130.0,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          color: Colors.white
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.light_mode,color: Colors.red,
                              size: 40.0,),
                            SizedBox(
                              width: 18,
                            ),
                            Text('''Loan amount has not been credited due to
incorrect account details.

You Have Entered Wrong Account Details.
Please Update Your Account Details Below.''')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text("Update Information",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const CustomTextField(
                      labelText: "Bank account number",
                      hintText: "John",
                    ),
                    const SizedBox(
                      height:20.0,
                    ),
                    const CustomTextField(
                      labelText: "IFSC Code",
                      hintText: "John",
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomTextField(
                      labelText: "Bank Name",
                      hintText: "John",
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder:(BuildContext context){
                            return Container(
                              height: 230.0,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.0),
                                color: const Color(0xFF15926C),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 35.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.library_add_check,
                                        color: Colors.white,),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        '''Details submitted
successfully'''
                                        ,style: TextStyle(
                                          color:Colors.white,
                                          fontSize:18.0
                                      ),)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '''It may take 2 to 5 working days to review
the account statement, so please wait.''',
                                    style: TextStyle(
                                        color:Colors.white,
                                        fontSize:15.0
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '''For this you keep checking the app
after some time''',
                                    style: TextStyle(
                                        color:Colors.white,
                                        fontSize:15.0
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '''(Saturday &  Sunday is non working days)''',style: TextStyle(
                                      color:Colors.white,
                                      fontSize:15.0
                                  ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      onLongPress: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AccountStatementScreen ()));
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
                  ]
              ),
            ),
          ),
        )
    );
  }
}
