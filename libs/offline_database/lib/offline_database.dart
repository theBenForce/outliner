import 'package:isar/isar.dart';
import 'package:offline_database/models/edge.dart';
import 'package:offline_database/models/vertex.dart';

Future<Isar?> openDB({required String dir}) async {
  if (Isar.instanceNames.isEmpty) {
    return await Isar.open([
      EdgeSchema,
      VertexSchema,
    ], inspector: true, directory: dir);
  }

  return Isar.getInstance();
}
