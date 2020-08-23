import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile1/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/modules/models/person_model.dart';
import 'dart:io' show Directory, Platform;

void main() async {
  bool notWindows;
  try {
    if (Platform.isWindows) {
      var dir = 'C:\Users\Glauc\OneDrive\Documentos';
      Hive.init(dir);
      notWindows = false;
    } else {
      notWindows = true;
    }
  } catch (e) {
    notWindows = true;
  }
  if (notWindows) await Hive.initFlutter();

  Hive.registerAdapter(PersonModelAdapter());
  runApp(ModularApp(module: AppModule()));
}
