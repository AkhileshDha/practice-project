import 'package:creditbeecopy/ScreensC/loan_update.dart';
import 'package:flutter/material.dart';

import '../Screen_helper/customer_details.dart';
class AccountStatementScreen extends StatefulWidget {
  static const routesName='AccountStatementScreen';
  const AccountStatementScreen({super.key});

  @override
  State<AccountStatementScreen> createState() => _AccountStatementScreenState();
}

class _AccountStatementScreenState extends State<AccountStatementScreen> {
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
          title: const Text("ACCOUNT STATEMENT",
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
              padding: const EdgeInsets.all(16.0),
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
                            Icon(Icons.home_filled,
                              color: Colors.black,
                              size: 40.0,),
                            SizedBox(
                              width: 18,
                            ),
                            Text('''We thank you for your patience.

We need a little more information about your 
account, for that you will need to upload your 
account statement.''',
                            style: TextStyle(
                              fontSize: 12
                            ),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 70.0,
                      padding: const EdgeInsets.all(8.0),
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          color: Colors.white
                      ),
                      child: const Text('''Amount will be credited to your account immediately
        after the account statement is approved''',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),)
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("Upload your document",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const CustomTextField(
                      prefixIcon: Icon(Icons.file_copy),
                      labelText: "Upload your document",
                    ),
                    const SizedBox(
                      height:20.0,
                    ),
                    const Spacer(),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoanUpdateScreen()));
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
