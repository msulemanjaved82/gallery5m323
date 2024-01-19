import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumBlue700dd => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue700Dd,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  // Display text style
  static get displayMediumBold => theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallBlack900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeDeeporange50 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.deepOrange50,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeDeeporange5001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.deepOrange5001,
      );
  static get headlineLargeGray100 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray100,
      );
  static get headlineLargeGray20001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray20001,
      );
  static get headlineLargeOnError => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineLargePrimary_1 => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleMediumWhiteA70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
