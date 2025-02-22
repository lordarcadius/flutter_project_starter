import 'package:auth_flutter/core/di/init_dependencies.dart';
import 'package:auth_flutter/core/theme/theme.dart';
import 'package:auth_flutter/core/utils/constants.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: serviceLocator<GoRouter>(),
          title: Constants.APP_NAME,
          theme: AppTheme.light.copyWith(colorScheme: lightDynamic),
          darkTheme: AppTheme.dark.copyWith(colorScheme: darkDynamic),
        );
      },
    );
  }
}
