import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargePTSansCaption => theme.textTheme.bodyLarge!.pTSansCaption;
  static get bodyLargeRobotoFlexBluegray500 =>
      theme.textTheme.bodyLarge!.robotoFlex.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeRobotoFlexWhiteA700 =>
      theme.textTheme.bodyLarge!.robotoFlex.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoGray500 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w400,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayMediumPTSans =>
      theme.textTheme.displayMedium!.pTSans.copyWith(
        fontSize: 46.fSize,
      );
  // Title text style
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimaryContainerBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsWhiteA700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsWhiteA700Bold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotoFlexDeeporange500 =>
      theme.textTheme.titleSmall!.robotoFlex.copyWith(
        color: appTheme.deepOrange500,
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get pTSansCaption {
    return copyWith(
      fontFamily: 'PT Sans Caption',
    );
  }

  TextStyle get robotoFlex {
    return copyWith(
      fontFamily: 'Roboto Flex',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get pTSans {
    return copyWith(
      fontFamily: 'PT Sans',
    );
  }
}
