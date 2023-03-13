// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetEdgeCollection on Isar {
  IsarCollection<Edge> get edges => this.collection();
}

const EdgeSchema = CollectionSchema(
  name: r'Edge',
  id: -6763578117045386352,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.string,
    ),
    r'verb': PropertySchema(
      id: 1,
      name: r'verb',
      type: IsarType.string,
    )
  },
  estimateSize: _edgeEstimateSize,
  serialize: _edgeSerialize,
  deserialize: _edgeDeserialize,
  deserializeProp: _edgeDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'verb': IndexSchema(
      id: -8895726905974302224,
      name: r'verb',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'verb',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'subject': LinkSchema(
      id: 2651307018899137304,
      name: r'subject',
      target: r'Vertex',
      single: true,
    ),
    r'objects': LinkSchema(
      id: 1864881425613492367,
      name: r'objects',
      target: r'Vertex',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _edgeGetId,
  getLinks: _edgeGetLinks,
  attach: _edgeAttach,
  version: '3.0.5',
);

int _edgeEstimateSize(
  Edge object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.verb.length * 3;
  return bytesCount;
}

void _edgeSerialize(
  Edge object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.id);
  writer.writeString(offsets[1], object.verb);
}

Edge _edgeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Edge();
  object.id = reader.readString(offsets[0]);
  object.verb = reader.readString(offsets[1]);
  return object;
}

P _edgeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _edgeGetId(Edge object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _edgeGetLinks(Edge object) {
  return [object.subject, object.objects];
}

void _edgeAttach(IsarCollection<dynamic> col, Id id, Edge object) {
  object.subject.attach(col, col.isar.collection<Vertex>(), r'subject', id);
  object.objects.attach(col, col.isar.collection<Vertex>(), r'objects', id);
}

extension EdgeByIndex on IsarCollection<Edge> {
  Future<Edge?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  Edge? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<Edge?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<Edge?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(Edge object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(Edge object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<Edge> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<Edge> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension EdgeQueryWhereSort on QueryBuilder<Edge, Edge, QWhere> {
  QueryBuilder<Edge, Edge, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EdgeQueryWhere on QueryBuilder<Edge, Edge, QWhereClause> {
  QueryBuilder<Edge, Edge, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> verbEqualTo(String verb) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'verb',
        value: [verb],
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> verbNotEqualTo(String verb) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'verb',
              lower: [],
              upper: [verb],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'verb',
              lower: [verb],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'verb',
              lower: [verb],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'verb',
              lower: [],
              upper: [verb],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> idEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterWhereClause> idNotEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ));
      }
    });
  }
}

extension EdgeQueryFilter on QueryBuilder<Edge, Edge, QFilterCondition> {
  QueryBuilder<Edge, Edge, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'verb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'verb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'verb',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'verb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'verb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'verb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'verb',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verb',
        value: '',
      ));
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> verbIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'verb',
        value: '',
      ));
    });
  }
}

extension EdgeQueryObject on QueryBuilder<Edge, Edge, QFilterCondition> {}

extension EdgeQueryLinks on QueryBuilder<Edge, Edge, QFilterCondition> {
  QueryBuilder<Edge, Edge, QAfterFilterCondition> subject(
      FilterQuery<Vertex> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'subject');
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> subjectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subject', 0, true, 0, true);
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> objects(
      FilterQuery<Vertex> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'objects');
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> objectsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'objects', length, true, length, true);
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> objectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'objects', 0, true, 0, true);
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> objectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'objects', 0, false, 999999, true);
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> objectsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'objects', 0, true, length, include);
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> objectsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'objects', length, include, 999999, true);
    });
  }

  QueryBuilder<Edge, Edge, QAfterFilterCondition> objectsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'objects', lower, includeLower, upper, includeUpper);
    });
  }
}

extension EdgeQuerySortBy on QueryBuilder<Edge, Edge, QSortBy> {
  QueryBuilder<Edge, Edge, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> sortByVerb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verb', Sort.asc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> sortByVerbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verb', Sort.desc);
    });
  }
}

extension EdgeQuerySortThenBy on QueryBuilder<Edge, Edge, QSortThenBy> {
  QueryBuilder<Edge, Edge, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> thenByVerb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verb', Sort.asc);
    });
  }

  QueryBuilder<Edge, Edge, QAfterSortBy> thenByVerbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verb', Sort.desc);
    });
  }
}

extension EdgeQueryWhereDistinct on QueryBuilder<Edge, Edge, QDistinct> {
  QueryBuilder<Edge, Edge, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Edge, Edge, QDistinct> distinctByVerb(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'verb', caseSensitive: caseSensitive);
    });
  }
}

extension EdgeQueryProperty on QueryBuilder<Edge, Edge, QQueryProperty> {
  QueryBuilder<Edge, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Edge, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Edge, String, QQueryOperations> verbProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'verb');
    });
  }
}
