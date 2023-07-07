import 'package:app_hair/app/features/auth/interactors/cubit/login_cubit.dart';
import 'package:app_hair/app/features/auth/ui/pages/auth_page.dart';
import 'package:app_hair/app/shared/utils.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'ui/pages/login_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginCubit()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutes.authPage(false),
      child: (_, args) => AuthPage(),
    ),
    ChildRoute(
      AppRoutes.loginPage(false),
      child: (_, args) => LoginPage(),
    ),
  ];
}
