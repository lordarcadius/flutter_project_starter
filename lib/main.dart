import 'package:auth_flutter/core/app/app.dart';
import 'package:auth_flutter/core/di/init_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  if (kIsWeb) {
   // setPathUrlStrategy();
    GoRouter.optionURLReflectsImperativeAPIs = true;
  }
  runApp(const AuthApp());
}
