import 'package:farmer_direct_product/Screens/sign_in_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  static const routesName='LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xFF1B5E20),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios,color: Colors.white,),
          onTap: (){},
        ),
      ),
    body:Container(
          height: double.maxFinite,
        width: double.maxFinite,
          color: const Color(0xFF1B5E20),
        child: const Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/logocircle.png"),
              radius: 90.0,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 10,),
            MyContainer(),
          ],
        )
      ),
    );
  }
}
class MyContainer extends StatefulWidget {

  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  bool eyes=false;

  bool passwordenabale= true;

   String password='';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height:459,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text("Welcome to Direct From Framers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0
                ),),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mobile_screen_share),
                  label: Text("Mobile No"),
                  ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              const SizedBox(
                height: 10.0,
              ),
               TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  suffixIcon: eyes ?GestureDetector(
                    child: passwordenabale?Container(
                      height: 20.0,
                      width: 20.0,
                      color: Colors.red,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Icon(CupertinoIcons.eye),
                    ):
                    Container(
                      height: 20.0,
                      width: 20.0,
                      color: Colors.red,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Icon(CupertinoIcons.eye_slash),
                    )
                  ):null,
                ),
                 obscureText: eyes?passwordenabale:true,
                 onChanged: (enterpassword){
                  password=enterpassword;
                  if(enterpassword.isEmpty){
                    setState(() {
                      eyes=false;
                    });
                  }else{
                    if(!eyes){
                      setState(() {
                        eyes=!eyes;
                      });
                    }
                  }
                 },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B5E20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                  "Forgetpassword?"),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignInScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCFCFCF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF1B5E20),
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
