import 'package:isar/isar.dart';
import 'package:offline_database/models/base.dart';
import 'package:ulid/ulid.dart';

part 'property.g.dart';

@Collection(accessor: 'properties')
class Property extends BaseDataModel {
  Property() : super(Ulid().toCanonical());

  @Index()
  late String key;
}
