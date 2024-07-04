import 'package:flutter/material.dart';
import 'package:otp_input_editor/otp_input_editor.dart';

class OtpInputField extends StatefulWidget {
  const OtpInputField({super.key});

  @override
  State<OtpInputField> createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> {
  String _otpData = "";

  OtpInputController? _otpInputController;
  bool _showOtp = true;

  @override
  Widget build(BuildContext context) {
    return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ..._getOtpText,
              _getOtpEditor,
              _spacer,
             // _clearOtpButton,
             // _hideOrShowButton,
            ],

    );
  }

  SizedBox get _spacer {
    return const SizedBox(
      height: 5,
    );
  }

  // Row get _hideOrShowButton {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       TextButton(
  //           onPressed: () {
  //             setState(() {
  //               _showOtp = !_showOtp;
  //             });
  //           },
  //           child: Row(
  //             children: _showOtp
  //                 ? [
  //               const Icon(Icons.visibility_off),
  //               const Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 8),
  //                 child: Text("Hide"),
  //               )
  //             ]
  //                 : [
  //               const Icon(Icons.visibility),
  //               const Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 8),
  //                 child: Text("Show"),
  //               )
  //             ],
  //           )),
  //     ],
  //   );
  // }

  // Row get _clearOtpButton {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     children: [
  //       InkWell(
  //         onTap: () {
  //           if (_otpInputController != null) {
  //             _otpInputController!.clear();
  //             _otpData = _otpInputController?.otp ?? "";
  //             setState(() {});
  //           }
  //         },
  //         child: const Text(
  //           "Clear OTP",
  //           style: TextStyle(
  //             color: Colors.blue,
  //             fontSize: 17,
  //             decoration: TextDecoration.underline,
  //             fontWeight: FontWeight.w500,
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  OtpInputEditor get _getOtpEditor {
    return OtpInputEditor(
      obscureText: !_showOtp,
      otpLength: 6,
      onOtpChanged: (value) {
        print(value);
        setState(() {
          _otpData = value;
        });
      },
      onInitialization: (OtpInputController otpInputController) {
        setState(() {
          _otpInputController = otpInputController;
        });
      },
      invalid: false,
      otpTextFieldBackgroundColor: Colors.white,
      cursorHeight: 25,
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 2.0,
          spreadRadius: 1.0,
        ),
      ],
      fieldWidth: 25.0,
      fieldHeight: 50.0,
      cursorWidth: 1.5,
      textInputStyle: const TextStyle(
        fontSize: 20.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      boxDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  AppBar get _appBar {
    return AppBar(
      title: const Text(
        "OTP Input Editor Example",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }

  List<Widget> get _getOtpText {
    return [
      const Text(
        "Entered Otp:",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        _otpData,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
    ];
  }
}