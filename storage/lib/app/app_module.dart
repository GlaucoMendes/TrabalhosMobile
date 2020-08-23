import 'package:mobile1/app/modules/register/register_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mobile1/app/app_widget.dart';
import 'package:mobile1/app/modules/home/home_module.dart';

import 'modules/core/person_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((_) => PersonStore()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter('/register', module: RegisterModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
