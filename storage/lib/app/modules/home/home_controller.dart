import 'package:hive/hive.dart';
import 'package:mobile1/app/modules/core/person_store.dart';
import 'package:mobile1/app/modules/models/person_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  PersonStore store = Modular.get();
  openRegister() {
    Modular.to.pushNamed('/register');
  }

  delete(int index) {
    store.deletePerson(index);
  }
}
