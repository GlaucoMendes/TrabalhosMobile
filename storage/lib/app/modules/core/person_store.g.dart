// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonStore on _PersonStoreBase, Store {
  final _$personsAtom = Atom(name: '_PersonStoreBase.persons');

  @override
  ObservableList<PersonModel> get persons {
    _$personsAtom.reportRead();
    return super.persons;
  }

  @override
  set persons(ObservableList<PersonModel> value) {
    _$personsAtom.reportWrite(value, super.persons, () {
      super.persons = value;
    });
  }

  final _$_PersonStoreBaseActionController =
      ActionController(name: '_PersonStoreBase');

  @override
  dynamic add(PersonModel person) {
    final _$actionInfo = _$_PersonStoreBaseActionController.startAction(
        name: '_PersonStoreBase.add');
    try {
      return super.add(person);
    } finally {
      _$_PersonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
persons: ${persons}
    ''';
  }
}
