import 'package:flutter/material.dart';
import '../core/app_export.dart';
/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
// Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blue50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(26.h),
    ),
  );
  static ButtonStyle get fillBlueTL10 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blue50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.h),
    ),
  );
  static ButtonStyle get fillBlueTL101 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blue5001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.h),
    ),
  );
////

  static ButtonStyle get fillDeepOrange => ElevatedButton.styleFrom(
    backgroundColor: appTheme.deepOrange30001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(26.h),
    ),
  );


  static ButtonStyle get fillDeepOrangeA => ElevatedButton.styleFrom(
    backgroundColor: appTheme.deepOrangeA200,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.h),
    ),
  );
  static ButtonStyle get fillDeepOrangeATL26 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.deepOrangeA20001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(26.h),
    ),
  );
  static ButtonStyle get fillLightBlue => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightBlue700,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.h),
    ),
  );

////


  static ButtonStyle get fillLightBlueTL26 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightBlue700,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(26.h),
    ),
  );
  static ButtonStyle get fillonErrorContainer => ElevatedButton.styleFrom(
    backgroundColor: theme.colorscheme.onErrorContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.h),
    ),
  );

// Gradient button style
  static BoxDecoration get gradient IndigoAToDeepPurpleADecoration =>
  BoxDecoration(
  borderRadius: BorderRadius.circular(14.h),
  gradient: LinearGradient(
  begin: Alignment (0.0, 0),
  end: Alignment(1.17, 1),
  colors: [appTheme.indigoA200, appTheme.deepPurpleA200],
  ),
  );

// Outline button style
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
  backgroundColor: Colors.transparent,
  side: BorderSide(
  color: appTheme.gray600,
  width: 1,
  ),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular (10.h),
  ),
  );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
  backgroundColor: Colors.transparent,
  side: BorderSide(
  color: theme.colorscheme.primary,
  width: 1,
  ),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(26.h),
  ),
  );
// text button style
  static ButtonStyle get none => ButtonStyle(
  backgroundColor:
  MaterialStateProperty.all<Color>(Colors.transparent),
  elevation: MaterialStateProperty.all<double>(0),
  );
}

