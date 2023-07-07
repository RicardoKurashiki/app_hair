import 'package:app_hair/app/features/auth/auth_module.dart';
import 'package:app_hair/app/shared/ui/pages/startup_page.dart';
import 'package:app_hair/app/shared/utils.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutes.startup(false),
      child: (_, args) => StartupPage(),
    ),
    ModuleRoute(
      AppRoutes.authModule(false),
      module: AuthModule(),
    ),
  ];
}
