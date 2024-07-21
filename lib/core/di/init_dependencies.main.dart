part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initRouter();
}

void _initRouter() {
  final router = RoutesProvider().router;
  serviceLocator.registerSingleton<GoRouter>(router);
}
