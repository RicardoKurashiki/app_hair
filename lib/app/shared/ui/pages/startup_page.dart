import 'package:app_hair/app/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartupPage extends StatelessWidget {
  StartupPage({super.key}) {
    Modular.to.pushNamed(AppRoutes.authPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
