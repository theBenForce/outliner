import 'package:isar/isar.dart';
import 'package:ulid/ulid.dart';

abstract class BaseDataModel {
  BaseDataModel(this.id);

  @Index(unique: true)
  String id;

  Id get isarId => idHash(id);
}

int idHash(String string) {
  var hash = 0xcbf29ce484222000;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}
