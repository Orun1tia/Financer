import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GastosRecord extends FirestoreRecord {
  GastosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "cuentaGasto" field.
  String? _cuentaGasto;
  String get cuentaGasto => _cuentaGasto ?? '';
  bool hasCuentaGasto() => _cuentaGasto != null;

  // "bolsillo" field.
  String? _bolsillo;
  String get bolsillo => _bolsillo ?? '';
  bool hasBolsillo() => _bolsillo != null;

  // "categoriaGasto" field.
  String? _categoriaGasto;
  String get categoriaGasto => _categoriaGasto ?? '';
  bool hasCategoriaGasto() => _categoriaGasto != null;

  // "emailUsuario" field.
  String? _emailUsuario;
  String get emailUsuario => _emailUsuario ?? '';
  bool hasEmailUsuario() => _emailUsuario != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "fuente" field.
  String? _fuente;
  String get fuente => _fuente ?? '';
  bool hasFuente() => _fuente != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _monto = castToType<double>(snapshotData['monto']);
    _cuentaGasto = snapshotData['cuentaGasto'] as String?;
    _bolsillo = snapshotData['bolsillo'] as String?;
    _categoriaGasto = snapshotData['categoriaGasto'] as String?;
    _emailUsuario = snapshotData['emailUsuario'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _fuente = snapshotData['fuente'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gastos');

  static Stream<GastosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GastosRecord.fromSnapshot(s));

  static Future<GastosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GastosRecord.fromSnapshot(s));

  static GastosRecord fromSnapshot(DocumentSnapshot snapshot) => GastosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GastosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GastosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GastosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GastosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGastosRecordData({
  double? monto,
  String? cuentaGasto,
  String? bolsillo,
  String? categoriaGasto,
  String? emailUsuario,
  String? nombre,
  String? fuente,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'monto': monto,
      'cuentaGasto': cuentaGasto,
      'bolsillo': bolsillo,
      'categoriaGasto': categoriaGasto,
      'emailUsuario': emailUsuario,
      'nombre': nombre,
      'fuente': fuente,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class GastosRecordDocumentEquality implements Equality<GastosRecord> {
  const GastosRecordDocumentEquality();

  @override
  bool equals(GastosRecord? e1, GastosRecord? e2) {
    return e1?.monto == e2?.monto &&
        e1?.cuentaGasto == e2?.cuentaGasto &&
        e1?.bolsillo == e2?.bolsillo &&
        e1?.categoriaGasto == e2?.categoriaGasto &&
        e1?.emailUsuario == e2?.emailUsuario &&
        e1?.nombre == e2?.nombre &&
        e1?.fuente == e2?.fuente &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(GastosRecord? e) => const ListEquality().hash([
        e?.monto,
        e?.cuentaGasto,
        e?.bolsillo,
        e?.categoriaGasto,
        e?.emailUsuario,
        e?.nombre,
        e?.fuente,
        e?.fecha
      ]);

  @override
  bool isValidKey(Object? o) => o is GastosRecord;
}
