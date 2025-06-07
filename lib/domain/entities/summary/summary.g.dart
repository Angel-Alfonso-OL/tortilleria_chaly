// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSummaryCollection on Isar {
  IsarCollection<Summary> get summarys => this.collection();
}

const SummarySchema = CollectionSchema(
  name: r'Summary',
  id: -1062335529282731241,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'tortillasHechas': PropertySchema(
      id: 1,
      name: r'tortillasHechas',
      type: IsarType.long,
    ),
    r'tortillasSobrantes': PropertySchema(
      id: 2,
      name: r'tortillasSobrantes',
      type: IsarType.long,
    ),
    r'tortillasVendidas': PropertySchema(
      id: 3,
      name: r'tortillasVendidas',
      type: IsarType.long,
    ),
    r'tortillasVendidasEspeciales': PropertySchema(
      id: 4,
      name: r'tortillasVendidasEspeciales',
      type: IsarType.long,
    ),
    r'tortillasVendidasTienda': PropertySchema(
      id: 5,
      name: r'tortillasVendidasTienda',
      type: IsarType.long,
    ),
    r'totalFiados': PropertySchema(
      id: 6,
      name: r'totalFiados',
      type: IsarType.long,
    ),
    r'totalPagados': PropertySchema(
      id: 7,
      name: r'totalPagados',
      type: IsarType.long,
    )
  },
  estimateSize: _summaryEstimateSize,
  serialize: _summarySerialize,
  deserialize: _summaryDeserialize,
  deserializeProp: _summaryDeserializeProp,
  idName: r'summaryId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _summaryGetId,
  getLinks: _summaryGetLinks,
  attach: _summaryAttach,
  version: '3.1.0+1',
);

int _summaryEstimateSize(
  Summary object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _summarySerialize(
  Summary object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.tortillasHechas);
  writer.writeLong(offsets[2], object.tortillasSobrantes);
  writer.writeLong(offsets[3], object.tortillasVendidas);
  writer.writeLong(offsets[4], object.tortillasVendidasEspeciales);
  writer.writeLong(offsets[5], object.tortillasVendidasTienda);
  writer.writeLong(offsets[6], object.totalFiados);
  writer.writeLong(offsets[7], object.totalPagados);
}

Summary _summaryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Summary(
    date: reader.readDateTime(offsets[0]),
    summaryId: id,
    tortillasHechas: reader.readLong(offsets[1]),
    tortillasSobrantes: reader.readLong(offsets[2]),
    tortillasVendidas: reader.readLong(offsets[3]),
    tortillasVendidasEspeciales: reader.readLong(offsets[4]),
    tortillasVendidasTienda: reader.readLong(offsets[5]),
    totalFiados: reader.readLong(offsets[6]),
    totalPagados: reader.readLong(offsets[7]),
  );
  return object;
}

P _summaryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _summaryGetId(Summary object) {
  return object.summaryId;
}

List<IsarLinkBase<dynamic>> _summaryGetLinks(Summary object) {
  return [];
}

void _summaryAttach(IsarCollection<dynamic> col, Id id, Summary object) {}

extension SummaryQueryWhereSort on QueryBuilder<Summary, Summary, QWhere> {
  QueryBuilder<Summary, Summary, QAfterWhere> anySummaryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SummaryQueryWhere on QueryBuilder<Summary, Summary, QWhereClause> {
  QueryBuilder<Summary, Summary, QAfterWhereClause> summaryIdEqualTo(
      Id summaryId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: summaryId,
        upper: summaryId,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterWhereClause> summaryIdNotEqualTo(
      Id summaryId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: summaryId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: summaryId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: summaryId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: summaryId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Summary, Summary, QAfterWhereClause> summaryIdGreaterThan(
      Id summaryId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: summaryId, includeLower: include),
      );
    });
  }

  QueryBuilder<Summary, Summary, QAfterWhereClause> summaryIdLessThan(
      Id summaryId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: summaryId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Summary, Summary, QAfterWhereClause> summaryIdBetween(
    Id lowerSummaryId,
    Id upperSummaryId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerSummaryId,
        includeLower: includeLower,
        upper: upperSummaryId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SummaryQueryFilter
    on QueryBuilder<Summary, Summary, QFilterCondition> {
  QueryBuilder<Summary, Summary, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> summaryIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'summaryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> summaryIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'summaryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> summaryIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'summaryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> summaryIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'summaryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> tortillasHechasEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tortillasHechas',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasHechasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tortillasHechas',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> tortillasHechasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tortillasHechas',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> tortillasHechasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tortillasHechas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasSobrantesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tortillasSobrantes',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasSobrantesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tortillasSobrantes',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasSobrantesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tortillasSobrantes',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasSobrantesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tortillasSobrantes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tortillasVendidas',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tortillasVendidas',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tortillasVendidas',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tortillasVendidas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasEspecialesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tortillasVendidasEspeciales',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasEspecialesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tortillasVendidasEspeciales',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasEspecialesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tortillasVendidasEspeciales',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasEspecialesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tortillasVendidasEspeciales',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasTiendaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tortillasVendidasTienda',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasTiendaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tortillasVendidasTienda',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasTiendaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tortillasVendidasTienda',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition>
      tortillasVendidasTiendaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tortillasVendidasTienda',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalFiadosEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalFiados',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalFiadosGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalFiados',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalFiadosLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalFiados',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalFiadosBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalFiados',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalPagadosEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPagados',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalPagadosGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPagados',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalPagadosLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPagados',
        value: value,
      ));
    });
  }

  QueryBuilder<Summary, Summary, QAfterFilterCondition> totalPagadosBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPagados',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SummaryQueryObject
    on QueryBuilder<Summary, Summary, QFilterCondition> {}

extension SummaryQueryLinks
    on QueryBuilder<Summary, Summary, QFilterCondition> {}

extension SummaryQuerySortBy on QueryBuilder<Summary, Summary, QSortBy> {
  QueryBuilder<Summary, Summary, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTortillasHechas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasHechas', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTortillasHechasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasHechas', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTortillasSobrantes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasSobrantes', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTortillasSobrantesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasSobrantes', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTortillasVendidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidas', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTortillasVendidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidas', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy>
      sortByTortillasVendidasEspeciales() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasEspeciales', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy>
      sortByTortillasVendidasEspecialesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasEspeciales', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTortillasVendidasTienda() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasTienda', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy>
      sortByTortillasVendidasTiendaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasTienda', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTotalFiados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFiados', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTotalFiadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFiados', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTotalPagados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPagados', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> sortByTotalPagadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPagados', Sort.desc);
    });
  }
}

extension SummaryQuerySortThenBy
    on QueryBuilder<Summary, Summary, QSortThenBy> {
  QueryBuilder<Summary, Summary, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenBySummaryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summaryId', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenBySummaryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summaryId', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTortillasHechas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasHechas', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTortillasHechasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasHechas', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTortillasSobrantes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasSobrantes', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTortillasSobrantesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasSobrantes', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTortillasVendidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidas', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTortillasVendidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidas', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy>
      thenByTortillasVendidasEspeciales() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasEspeciales', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy>
      thenByTortillasVendidasEspecialesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasEspeciales', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTortillasVendidasTienda() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasTienda', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy>
      thenByTortillasVendidasTiendaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tortillasVendidasTienda', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTotalFiados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFiados', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTotalFiadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFiados', Sort.desc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTotalPagados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPagados', Sort.asc);
    });
  }

  QueryBuilder<Summary, Summary, QAfterSortBy> thenByTotalPagadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPagados', Sort.desc);
    });
  }
}

extension SummaryQueryWhereDistinct
    on QueryBuilder<Summary, Summary, QDistinct> {
  QueryBuilder<Summary, Summary, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Summary, Summary, QDistinct> distinctByTortillasHechas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tortillasHechas');
    });
  }

  QueryBuilder<Summary, Summary, QDistinct> distinctByTortillasSobrantes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tortillasSobrantes');
    });
  }

  QueryBuilder<Summary, Summary, QDistinct> distinctByTortillasVendidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tortillasVendidas');
    });
  }

  QueryBuilder<Summary, Summary, QDistinct>
      distinctByTortillasVendidasEspeciales() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tortillasVendidasEspeciales');
    });
  }

  QueryBuilder<Summary, Summary, QDistinct>
      distinctByTortillasVendidasTienda() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tortillasVendidasTienda');
    });
  }

  QueryBuilder<Summary, Summary, QDistinct> distinctByTotalFiados() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalFiados');
    });
  }

  QueryBuilder<Summary, Summary, QDistinct> distinctByTotalPagados() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPagados');
    });
  }
}

extension SummaryQueryProperty
    on QueryBuilder<Summary, Summary, QQueryProperty> {
  QueryBuilder<Summary, int, QQueryOperations> summaryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'summaryId');
    });
  }

  QueryBuilder<Summary, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Summary, int, QQueryOperations> tortillasHechasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tortillasHechas');
    });
  }

  QueryBuilder<Summary, int, QQueryOperations> tortillasSobrantesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tortillasSobrantes');
    });
  }

  QueryBuilder<Summary, int, QQueryOperations> tortillasVendidasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tortillasVendidas');
    });
  }

  QueryBuilder<Summary, int, QQueryOperations>
      tortillasVendidasEspecialesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tortillasVendidasEspeciales');
    });
  }

  QueryBuilder<Summary, int, QQueryOperations>
      tortillasVendidasTiendaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tortillasVendidasTienda');
    });
  }

  QueryBuilder<Summary, int, QQueryOperations> totalFiadosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalFiados');
    });
  }

  QueryBuilder<Summary, int, QQueryOperations> totalPagadosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPagados');
    });
  }
}
