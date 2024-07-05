import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
    color: appTheme.blue50,
  );
  static BoxDecoration get fillBlue200 => BoxDecoration(
    color: appTheme.blue200,
  );
  static BoxDecoration get fillBlue5001 => BoxDecoration(
    color: appTheme.blue5001,
  );
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray900,
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray200,
  );
  static BoxDecoration get fillGray100 => BoxDecoration(
    color: appTheme.gray100,
  );
  static BoxDecoration get fillGray90001 => BoxDecoration(
    color: appTheme.gray90001,
  );
  static BoxDecoration get fillGray90004 => BoxDecoration(
    color: appTheme.gray90004,
  );
  static BoxDecoration get fillLime => BoxDecoration(
    color: appTheme.lime90001,
  );
  static BoxDecoration get fillLime900 => BoxDecoration(
    color: appTheme.lime900,
  );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
  );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
  );
  static BoxDecoration get fillOrange => BoxDecoration(
    color: appTheme.orange50,
  );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.primaryContainer,
  );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
    color: theme.colorScheme.secondaryContainer,
  );
  static BoxDecoration get fillTeal => BoxDecoration(
    color: appTheme.teal600,
  );

  // Gradient decorations
  static BoxDecoration get gradientTealToBlue => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.teal3007f, appTheme.blue50.withOpacity(0.5)],
    ),
  );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.03),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineBlack900 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.07),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9001 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.07),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(-5, 0),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9002 => BoxDecoration(
    color: appTheme.blue5001,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.03),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineGray => BoxDecoration(
    border: Border.all(
      color: appTheme.gray600,
      width: 1.h,
    ),
  );

  static BoxDecoration get outlineGray100e5 => BoxDecoration(
    color: appTheme.blue5001,
    boxShadow: [
      BoxShadow(
        color: appTheme.gray100E5,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, -10.04),
      ),
    ],
  );

  static BoxDecoration get outlineGrayE => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.gray100E5,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, -10.04),
      ),
    ],
  );

  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
    color: appTheme.blue200,
    border: Border(
      top: BorderSide(
        color: theme.colorScheme.onErrorContainer,
        width: 1.h,
      ),
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(24.h);
  static BorderRadius get circleBorder50 => BorderRadius.circular(50.h);
  static BorderRadius get circleBorder66 => BorderRadius.circular(66.h);

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(10.h);
  static BorderRadius get roundedBorder14 => BorderRadius.circular(14.h);
  static BorderRadius get roundedBorder34 => BorderRadius.circular(34.h);
  static BorderRadius get roundedBorder44 => BorderRadius.circular(44.h);
  static BorderRadius get roundedBorder5 => BorderRadius.circular(5.h);
}
