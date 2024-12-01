import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubCategoriasRecord extends FirestoreRecord {
  SubCategoriasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _usuario = snapshotData['Usuario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SubCategorias');

  static Stream<SubCategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubCategoriasRecord.fromSnapshot(s));

  static Future<SubCategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubCategoriasRecord.fromSnapshot(s));

  static SubCategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubCategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubCategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubCategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubCategoriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubCategoriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubCategoriasRecordData({
  String? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubCategoriasRecordDocumentEquality
    implements Equality<SubCategoriasRecord> {
  const SubCategoriasRecordDocumentEquality();

  @override
  bool equals(SubCategoriasRecord? e1, SubCategoriasRecord? e2) {
    return e1?.usuario == e2?.usuario;
  }

  @override
  int hash(SubCategoriasRecord? e) => const ListEquality().hash([e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is SubCategoriasRecord;
}
