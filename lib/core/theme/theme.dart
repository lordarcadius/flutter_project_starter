import 'package:auth_flutter/core/theme/card_theme.dart';
import 'package:auth_flutter/core/theme/pallete.dart';
import 'package:auth_flutter/core/theme/sizes.dart';
import 'package:auth_flutter/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //Light Theme
  static final light = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: Constants.APP_FONT,
        ),
    primaryTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: Constants.APP_FONT,
        ),
    cardTheme: AppCardTheme.selector(),
    chipTheme: const ChipThemeData().copyWith(
      side: BorderSide.none,
    ),
    outlinedButtonTheme: _outlineButton(),
    elevatedButtonTheme: _elevatedButton(),
    inputDecorationTheme: _inputDecoration(),
    dividerColor: Pallete.grey300,
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeData.light().canvasColor,
      surfaceTintColor: Pallete.transparent,
    ),
  );

//Dark Theme
  static final dark = ThemeData.dark().copyWith(
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: Constants.APP_FONT,
        ),
    primaryTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: Constants.APP_FONT,
        ),
    cardTheme: AppCardTheme.selector(true),
    chipTheme: const ChipThemeData().copyWith(
      side: BorderSide.none,
    ),
    outlinedButtonTheme: _outlineButton(),
    elevatedButtonTheme: _elevatedButton(),
    inputDecorationTheme: _inputDecoration(),
    dividerColor: Pallete.grey300,
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeData.dark().canvasColor,
      surfaceTintColor: Pallete.transparent,
    ),
  );

  static _outlineButton() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radiusMedium),
        ),
      ),
    );
  }

  static _elevatedButton() {
    return ElevatedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radiusMedium),
        ),
      ),
    );
  }

  static _inputDecoration() {
    return const InputDecorationTheme().copyWith(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.radiusMedium),
      ),
    );
  }
}
