import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:mobile1/app/modules/core/person_store.dart';
import 'package:mobile1/app/modules/models/person_model.dart';

import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_controller.g.dart';

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  TextEditingController nameController = TextEditingController();
  PersonStore store = Modular.get();

  register() async {
    var person = PersonModel(name: nameController.text);
    store.registerPersons(person);
    Modular.to.pop();
  }
}
