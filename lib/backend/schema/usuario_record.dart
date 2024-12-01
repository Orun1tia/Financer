import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "puntaje" field.
  int? _puntaje;
  int get puntaje => _puntaje ?? 0;
  bool hasPuntaje() => _puntaje != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
    _puntaje = castToType<int>(snapshotData['puntaje']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioRecord.fromSnapshot(s));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioRecord.fromSnapshot(s));

  static UsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioRecordData({
  String? email,
  String? name,
  int? edad,
  int? puntaje,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'name': name,
      'edad': edad,
      'puntaje': puntaje,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.name == e2?.name &&
        e1?.edad == e2?.edad &&
        e1?.puntaje == e2?.puntaje;
  }

  @override
  int hash(UsuarioRecord? e) =>
      const ListEquality().hash([e?.email, e?.name, e?.edad, e?.puntaje]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
