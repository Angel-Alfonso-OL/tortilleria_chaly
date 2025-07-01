// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bills.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBillsCollection on Isar {
  IsarCollection<Bills> get bills => this.collection();
}

const BillsSchema = CollectionSchema(
  name: r'Bills',
  id: -8367747835733735280,
  properties: {
    r'comida': PropertySchema(
      id: 0,
      name: r'comida',
      type: IsarType.long,
    ),
    r'compras': PropertySchema(
      id: 1,
      name: r'compras',
      type: IsarType.long,
    ),
    r'date': PropertySchema(
      id: 2,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'gas': PropertySchema(
      id: 3,
      name: r'gas',
      type: IsarType.long,
    ),
    r'luz': PropertySchema(
      id: 4,
      name: r'luz',
      type: IsarType.long,
    ),
    r'salario': PropertySchema(
      id: 5,
      name: r'salario',
      type: IsarType.long,
    )
  },
  estimateSize: _billsEstimateSize,
  serialize: _billsSerialize,
  deserialize: _billsDeserialize,
  deserializeProp: _billsDeserializeProp,
  idName: r'billsId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _billsGetId,
  getLinks: _billsGetLinks,
  attach: _billsAttach,
  version: '3.1.0+1',
);

int _billsEstimateSize(
  Bills object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _billsSerialize(
  Bills object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.comida);
  writer.writeLong(offsets[1], object.compras);
  writer.writeDateTime(offsets[2], object.date);
  writer.writeLong(offsets[3], object.gas);
  writer.writeLong(offsets[4], object.luz);
  writer.writeLong(offsets[5], object.salario);
}

Bills _billsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Bills(
    billsId: id,
    comida: reader.readLong(offsets[0]),
    compras: reader.readLong(offsets[1]),
    date: reader.readDateTime(offsets[2]),
    gas: reader.readLong(offsets[3]),
    luz: reader.readLong(offsets[4]),
    salario: reader.readLong(offsets[5]),
  );
  return object;
}

P _billsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _billsGetId(Bills object) {
  return object.billsId;
}

List<IsarLinkBase<dynamic>> _billsGetLinks(Bills object) {
  return [];
}

void _billsAttach(IsarCollection<dynamic> col, Id id, Bills object) {}

extension BillsQueryWhereSort on QueryBuilder<Bills, Bills, QWhere> {
  QueryBuilder<Bills, Bills, QAfterWhere> anyBillsId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BillsQueryWhere on QueryBuilder<Bills, Bills, QWhereClause> {
  QueryBuilder<Bills, Bills, QAfterWhereClause> billsIdEqualTo(Id billsId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: billsId,
        upper: billsId,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterWhereClause> billsIdNotEqualTo(Id billsId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: billsId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: billsId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: billsId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: billsId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Bills, Bills, QAfterWhereClause> billsIdGreaterThan(Id billsId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: billsId, includeLower: include),
      );
    });
  }

  QueryBuilder<Bills, Bills, QAfterWhereClause> billsIdLessThan(Id billsId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: billsId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Bills, Bills, QAfterWhereClause> billsIdBetween(
    Id lowerBillsId,
    Id upperBillsId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerBillsId,
        includeLower: includeLower,
        upper: upperBillsId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BillsQueryFilter on QueryBuilder<Bills, Bills, QFilterCondition> {
  QueryBuilder<Bills, Bills, QAfterFilterCondition> billsIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billsId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> billsIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billsId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> billsIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billsId',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> billsIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billsId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comidaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comida',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comidaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comida',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comidaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comida',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comidaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comprasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compras',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comprasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'compras',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comprasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'compras',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> comprasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'compras',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> dateGreaterThan(
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

  QueryBuilder<Bills, Bills, QAfterFilterCondition> dateLessThan(
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

  QueryBuilder<Bills, Bills, QAfterFilterCondition> dateBetween(
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

  QueryBuilder<Bills, Bills, QAfterFilterCondition> gasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gas',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> gasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gas',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> gasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gas',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> gasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> luzEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'luz',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> luzGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'luz',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> luzLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'luz',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> luzBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'luz',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> salarioEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salario',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> salarioGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salario',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> salarioLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salario',
        value: value,
      ));
    });
  }

  QueryBuilder<Bills, Bills, QAfterFilterCondition> salarioBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BillsQueryObject on QueryBuilder<Bills, Bills, QFilterCondition> {}

extension BillsQueryLinks on QueryBuilder<Bills, Bills, QFilterCondition> {}

extension BillsQuerySortBy on QueryBuilder<Bills, Bills, QSortBy> {
  QueryBuilder<Bills, Bills, QAfterSortBy> sortByComida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comida', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByComidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comida', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByCompras() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compras', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByComprasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compras', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByGas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gas', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByGasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gas', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByLuz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'luz', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortByLuzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'luz', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortBySalario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salario', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> sortBySalarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salario', Sort.desc);
    });
  }
}

extension BillsQuerySortThenBy on QueryBuilder<Bills, Bills, QSortThenBy> {
  QueryBuilder<Bills, Bills, QAfterSortBy> thenByBillsId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billsId', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByBillsIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billsId', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByComida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comida', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByComidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comida', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByCompras() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compras', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByComprasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compras', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByGas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gas', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByGasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gas', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByLuz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'luz', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenByLuzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'luz', Sort.desc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenBySalario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salario', Sort.asc);
    });
  }

  QueryBuilder<Bills, Bills, QAfterSortBy> thenBySalarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salario', Sort.desc);
    });
  }
}

extension BillsQueryWhereDistinct on QueryBuilder<Bills, Bills, QDistinct> {
  QueryBuilder<Bills, Bills, QDistinct> distinctByComida() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comida');
    });
  }

  QueryBuilder<Bills, Bills, QDistinct> distinctByCompras() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'compras');
    });
  }

  QueryBuilder<Bills, Bills, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Bills, Bills, QDistinct> distinctByGas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gas');
    });
  }

  QueryBuilder<Bills, Bills, QDistinct> distinctByLuz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'luz');
    });
  }

  QueryBuilder<Bills, Bills, QDistinct> distinctBySalario() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salario');
    });
  }
}

extension BillsQueryProperty on QueryBuilder<Bills, Bills, QQueryProperty> {
  QueryBuilder<Bills, int, QQueryOperations> billsIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billsId');
    });
  }

  QueryBuilder<Bills, int, QQueryOperations> comidaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comida');
    });
  }

  QueryBuilder<Bills, int, QQueryOperations> comprasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'compras');
    });
  }

  QueryBuilder<Bills, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Bills, int, QQueryOperations> gasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gas');
    });
  }

  QueryBuilder<Bills, int, QQueryOperations> luzProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'luz');
    });
  }

  QueryBuilder<Bills, int, QQueryOperations> salarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salario');
    });
  }
}
