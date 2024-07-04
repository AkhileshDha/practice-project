import 'package:creditbeecopy/ScreensC/login_screen.dart';
import 'package:flutter/material.dart';
import 'ScreensC/account_statement.dart';
import 'ScreensC/bank_information.dart';
import 'ScreensC/basic_details.dart';
import 'ScreensC/congratulations_bank.dart';
import 'ScreensC/instant_loan_guide.dart';
import 'ScreensC/instant_loan_page2.dart';
import 'ScreensC/loan_approved.dart';
import 'ScreensC/loan_status_approved.dart';
import 'ScreensC/loan_update.dart';
import 'ScreensC/pan_card_detail.dart';
import 'ScreensC/payment_method.dart';
import 'ScreensC/profile.dart';
import 'ScreensC/select_requirements.dart';
import 'ScreensC/take_a_photo.dart';
import 'ScreensC/update_information.dart';
import 'ScreensC/verfication_otp.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'LoginScreen',
        routes: {
          'LoginScreen':(context)=>const LoginScreen(),
          'VerficationOTPScreen':(context)=>const VerficationOTPScreen(),
          'BasicDetailsScreen': (context)=>const BasicDetailsScreen(),
         'PanCardDetailScreen':(context)=>const PanCardDetailScreen(),
          'SelectRequirementScreen':(context)=>const SelectRequirementScreen(),
          'LoanStatusApprovedScreen': (context)=>const LoanStatusApprovedScreen(),
          'BankInformationScreen':(context)=>const BankInformationScreen(),
          'CongratulationBankScreen':(context)=>const CongratulationBankScreen(),
          'PaymentMethodScreen ':(context)=>const PaymentMethodScreen (),
          'LoanApprovedScreen ':(context)=>const LoanApprovedScreen (),
          'UpdateInformationScreen':(context)=>const UpdateInformationScreen (),
         'AccountStatementScreen':(context)=>const AccountStatementScreen (),
         'LoanUpdateScreen':(context)=>const LoanUpdateScreen(),
         'InstantLoanGuideScreen':(context)=>const InstantLoanGuideScreen(),
         'InstantLoanPage2':(context)=>const InstantLoanPage2(),
         'TakeAPhotoScreen':(context)=>const TakeAPhotoScreen(),
         'ProfileScreen':(context)=>const ProfileScreen(),
        },
      ),
    );
  }
}


