import 'dart:ui';
import 'package:shahid_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlinePrimaryTL21 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL211 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlue900Ea,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
