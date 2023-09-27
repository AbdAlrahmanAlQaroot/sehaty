import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrescriptionsRecord extends FirestoreRecord {
  PrescriptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "doctor" field.
  String? _doctor;
  String get doctor => _doctor ?? '';
  bool hasDoctor() => _doctor != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _doctor = snapshotData['doctor'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prescriptions');

  static Stream<PrescriptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrescriptionsRecord.fromSnapshot(s));

  static Future<PrescriptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PrescriptionsRecord.fromSnapshot(s));

  static PrescriptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PrescriptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrescriptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrescriptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrescriptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrescriptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrescriptionsRecordData({
  String? name,
  String? doctor,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'doctor': doctor,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrescriptionsRecordDocumentEquality
    implements Equality<PrescriptionsRecord> {
  const PrescriptionsRecordDocumentEquality();

  @override
  bool equals(PrescriptionsRecord? e1, PrescriptionsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.doctor == e2?.doctor &&
        e1?.description == e2?.description;
  }

  @override
  int hash(PrescriptionsRecord? e) =>
      const ListEquality().hash([e?.name, e?.doctor, e?.description]);

  @override
  bool isValidKey(Object? o) => o is PrescriptionsRecord;
}
