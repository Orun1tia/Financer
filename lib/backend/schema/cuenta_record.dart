import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuentaRecord extends FirestoreRecord {
  CuentaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "dinero" field.
  double? _dinero;
  double get dinero => _dinero ?? 0.0;
  bool hasDinero() => _dinero != null;

  // "cuentaBancaria" field.
  String? _cuentaBancaria;
  String get cuentaBancaria => _cuentaBancaria ?? '';
  bool hasCuentaBancaria() => _cuentaBancaria != null;

  // "bolsillo" field.
  List<String>? _bolsillo;
  List<String> get bolsillo => _bolsillo ?? const [];
  bool hasBolsillo() => _bolsillo != null;

  // "emailUsuario" field.
  String? _emailUsuario;
  String get emailUsuario => _emailUsuario ?? '';
  bool hasEmailUsuario() => _emailUsuario != null;

  void _initializeFields() {
    _dinero = castToType<double>(snapshotData['dinero']);
    _cuentaBancaria = snapshotData['cuentaBancaria'] as String?;
    _bolsillo = getDataList(snapshotData['bolsillo']);
    _emailUsuario = snapshotData['emailUsuario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cuenta');

  static Stream<CuentaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuentaRecord.fromSnapshot(s));

  static Future<CuentaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuentaRecord.fromSnapshot(s));

  static CuentaRecord fromSnapshot(DocumentSnapshot snapshot) => CuentaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuentaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuentaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuentaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuentaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuentaRecordData({
  double? dinero,
  String? cuentaBancaria,
  String? emailUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dinero': dinero,
      'cuentaBancaria': cuentaBancaria,
      'emailUsuario': emailUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuentaRecordDocumentEquality implements Equality<CuentaRecord> {
  const CuentaRecordDocumentEquality();

  @override
  bool equals(CuentaRecord? e1, CuentaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.dinero == e2?.dinero &&
        e1?.cuentaBancaria == e2?.cuentaBancaria &&
        listEquality.equals(e1?.bolsillo, e2?.bolsillo) &&
        e1?.emailUsuario == e2?.emailUsuario;
  }

  @override
  int hash(CuentaRecord? e) => const ListEquality()
      .hash([e?.dinero, e?.cuentaBancaria, e?.bolsillo, e?.emailUsuario]);

  @override
  bool isValidKey(Object? o) => o is CuentaRecord;
}
