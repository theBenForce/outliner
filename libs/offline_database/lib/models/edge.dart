import 'package:isar/isar.dart';
import 'package:offline_database/models/base.dart';
import 'package:offline_database/models/vertex.dart';
import 'package:ulid/ulid.dart';

part 'edge.g.dart';

@collection
class Edge extends BaseDataModel {
  Edge() : super(Ulid().toCanonical());

  @Index()
  final subject = IsarLink<Vertex>();

  @Index()
  late String verb;

  @Index()
  final objects = IsarLinks<Vertex>();
}
