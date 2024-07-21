import 'package:auth_flutter/core/theme/sizes.dart';
import 'package:flutter/material.dart';

class AppCardTheme {
  AppCardTheme._(); 

  static selector([bool isDark = false]) => CardTheme(
        //color: isDark ? Pallete.black : Pallete.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radiusExtraLarge),
        ),
      );
}
