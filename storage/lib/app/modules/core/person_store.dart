import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:mobile1/app/modules/models/person_model.dart';
import 'package:mobx/mobx.dart';
part 'person_store.g.dart';

class PersonStore = _PersonStoreBase with _$PersonStore;

abstract class _PersonStoreBase with Store {
  _PersonStoreBase() {
    loadPersons();
  }
  @observable
  ObservableList<PersonModel> persons = ObservableList<PersonModel>();
  @action
  add(PersonModel person) {
    persons.add(person);
  }

  registerPersons(PersonModel person) async {
    var box = await Hive.openBox<PersonModel>('personBox');
    box.add(person);
    add(person);
  }

  loadPersons() async {
    var box = await Hive.openBox<PersonModel>('personBox');

    for (var i = 0; i < box.length; i++) {
      persons.add(box.get(i));
    }
  }

  deletePerson(int index) async {
    var box = await Hive.openBox<PersonModel>('personBox');
    box.deleteAt(index);
    persons.removeAt(index);
  }

  clear() async {
    var box = await Hive.openBox<PersonModel>('personBox');
    box.clear();
    persons.clear();
  }
}
