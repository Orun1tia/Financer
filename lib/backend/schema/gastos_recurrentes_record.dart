import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GastosRecurrentesRecord extends FirestoreRecord {
  GastosRecurrentesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "cuentaGasto" field.
  String? _cuentaGasto;
  String get cuentaGasto => _cuentaGasto ?? '';
  bool hasCuentaGasto() => _cuentaGasto != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "tipoGasto" field.
  String? _tipoGasto;
  String get tipoGasto => _tipoGasto ?? '';
  bool hasTipoGasto() => _tipoGasto != null;

  // "bolsillo" field.
  String? _bolsillo;
  String get bolsillo => _bolsillo ?? '';
  bool hasBolsillo() => _bolsillo != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _monto = castToType<double>(snapshotData['monto']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _cuentaGasto = snapshotData['cuentaGasto'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tipoGasto = snapshotData['tipoGasto'] as String?;
    _bolsillo = snapshotData['bolsillo'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gastosRecurrentes');

  static Stream<GastosRecurrentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GastosRecurrentesRecord.fromSnapshot(s));

  static Future<GastosRecurrentesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GastosRecurrentesRecord.fromSnapshot(s));

  static GastosRecurrentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GastosRecurrentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GastosRecurrentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GastosRecurrentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GastosRecurrentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GastosRecurrentesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGastosRecurrentesRecordData({
  double? monto,
  DateTime? fecha,
  String? cuentaGasto,
  String? descripcion,
  String? tipoGasto,
  String? bolsillo,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'monto': monto,
      'fecha': fecha,
      'cuentaGasto': cuentaGasto,
      'descripcion': descripcion,
      'tipoGasto': tipoGasto,
      'bolsillo': bolsillo,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class GastosRecurrentesRecordDocumentEquality
    implements Equality<GastosRecurrentesRecord> {
  const GastosRecurrentesRecordDocumentEquality();

  @override
  bool equals(GastosRecurrentesRecord? e1, GastosRecurrentesRecord? e2) {
    return e1?.monto == e2?.monto &&
        e1?.fecha == e2?.fecha &&
        e1?.cuentaGasto == e2?.cuentaGasto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tipoGasto == e2?.tipoGasto &&
        e1?.bolsillo == e2?.bolsillo &&
        e1?.email == e2?.email;
  }

  @override
  int hash(GastosRecurrentesRecord? e) => const ListEquality().hash([
        e?.monto,
        e?.fecha,
        e?.cuentaGasto,
        e?.descripcion,
        e?.tipoGasto,
        e?.bolsillo,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is GastosRecurrentesRecord;
}
