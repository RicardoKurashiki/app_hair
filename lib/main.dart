import 'package:app_hair/app/app_module.dart';
import 'package:app_hair/app/app_widget.dart';
import 'package:app_hair/app/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  final config = await Config.instance;
  await Supabase.initialize(
    url: config.url,
    anonKey: config.key,
  );

  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
