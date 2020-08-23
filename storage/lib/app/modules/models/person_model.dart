import 'package:hive/hive.dart';
part 'person_model.g.dart';

@HiveType(typeId: 0)
class PersonModel extends HiveObject {
  @HiveField(0)
  String name;
  PersonModel({this.name});
}
