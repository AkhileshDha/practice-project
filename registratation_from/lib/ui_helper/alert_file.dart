import 'package:flutter/material.dart';
class MyAlert extends StatelessWidget {
  const MyAlert({super.key});
  @override
  Widget build(BuildContext context) {

    return Container(
        height: 55.0,
      width: 150.0,
      decoration:BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: TextButton(
        child: const Text("Sign Up",style: TextStyle(
          color: Colors.white
        ),),
        onPressed: (){
          showAlertDialog(context);
        },
      ),
    );
  }
}
showAlertDialog(BuildContext context){
  Widget okbutton=TextButton(
    child:const Text("Ok"),
    onPressed: (){
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert= AlertDialog(
    title: const Text("Simple Alert"),
    content:const Text("This is an alert message"),
    actions: [
      okbutton
    ],
  );

  showDialog(context: context,
      builder:(BuildContext context){
         return alert;
      }
      );
}
//     return Container(
//       height: 50.0,
//       width: 150.0,
//       decoration: BoxDecoration(
//           color: Colors.blueAccent,
//           borderRadius: BorderRadius.circular(9.0)
//       ),
//
//      child: TextButton(
//         child:const Text('SIGNUP',style: TextStyle(
//           fontWeight: FontWeight.w700,
//           fontSize: 15.0,
//           color: Colors.white,
//         ),),
//         onPressed: () {
//           showAlertDialog(context);
//         },
//       ),
//     );
//   }
// }
//
// showAlertDialog(BuildContext context) {
//   Widget okButton = TextButton(
//     child:const Text("OK"),
//     onPressed: () {
//       Navigator.of(context).pop();
//     },
//   );
//   AlertDialog alert = AlertDialog(
//     title: const Text("Simple Alert"),
//     content: const Text("This is an alert message."),
//     actions: [
//       okButton,
//     ],
//   );
//
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }