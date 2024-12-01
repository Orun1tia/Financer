import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngresoRecord extends FirestoreRecord {
  IngresoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "emailUsuario" field.
  String? _emailUsuario;
  String get emailUsuario => _emailUsuario ?? '';
  bool hasEmailUsuario() => _emailUsuario != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "cuentaGasto" field.
  String? _cuentaGasto;
  String get cuentaGasto => _cuentaGasto ?? '';
  bool hasCuentaGasto() => _cuentaGasto != null;

  void _initializeFields() {
    _monto = castToType<double>(snapshotData['monto']);
    _emailUsuario = snapshotData['emailUsuario'] as String?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _cuentaGasto = snapshotData['cuentaGasto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ingreso');

  static Stream<IngresoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngresoRecord.fromSnapshot(s));

  static Future<IngresoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IngresoRecord.fromSnapshot(s));

  static IngresoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngresoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngresoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngresoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngresoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngresoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngresoRecordData({
  double? monto,
  String? emailUsuario,
  String? ubicacion,
  String? nombre,
  DateTime? fecha,
  String? cuentaGasto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'monto': monto,
      'emailUsuario': emailUsuario,
      'ubicacion': ubicacion,
      'nombre': nombre,
      'fecha': fecha,
      'cuentaGasto': cuentaGasto,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngresoRecordDocumentEquality implements Equality<IngresoRecord> {
  const IngresoRecordDocumentEquality();

  @override
  bool equals(IngresoRecord? e1, IngresoRecord? e2) {
    return e1?.monto == e2?.monto &&
        e1?.emailUsuario == e2?.emailUsuario &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.nombre == e2?.nombre &&
        e1?.fecha == e2?.fecha &&
        e1?.cuentaGasto == e2?.cuentaGasto;
  }

  @override
  int hash(IngresoRecord? e) => const ListEquality().hash([
        e?.monto,
        e?.emailUsuario,
        e?.ubicacion,
        e?.nombre,
        e?.fecha,
        e?.cuentaGasto
      ]);

  @override
  bool isValidKey(Object? o) => o is IngresoRecord;
}
