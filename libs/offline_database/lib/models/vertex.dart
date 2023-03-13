import 'package:isar/isar.dart';
import 'package:offline_database/models/base.dart';
import 'package:ulid/ulid.dart';

part 'vertex.g.dart';

@Collection(accessor: 'vertices')
class Vertex extends BaseDataModel {
  Vertex() : super(Ulid().toCanonical());
}
