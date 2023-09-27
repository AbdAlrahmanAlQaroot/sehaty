import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicineRecord extends FirestoreRecord {
  MedicineRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "daily_dose" field.
  int? _dailyDose;
  int get dailyDose => _dailyDose ?? 0;
  bool hasDailyDose() => _dailyDose != null;

  // "pills_number" field.
  int? _pillsNumber;
  int get pillsNumber => _pillsNumber ?? 0;
  bool hasPillsNumber() => _pillsNumber != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "prescription_id" field.
  int? _prescriptionId;
  int get prescriptionId => _prescriptionId ?? 0;
  bool hasPrescriptionId() => _prescriptionId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _dailyDose = castToType<int>(snapshotData['daily_dose']);
    _pillsNumber = castToType<int>(snapshotData['pills_number']);
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _prescriptionId = castToType<int>(snapshotData['prescription_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicine');

  static Stream<MedicineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicineRecord.fromSnapshot(s));

  static Future<MedicineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicineRecord.fromSnapshot(s));

  static MedicineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicineRecordData({
  String? name,
  int? dailyDose,
  int? pillsNumber,
  String? description,
  String? image,
  int? prescriptionId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'daily_dose': dailyDose,
      'pills_number': pillsNumber,
      'description': description,
      'image': image,
      'prescription_id': prescriptionId,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicineRecordDocumentEquality implements Equality<MedicineRecord> {
  const MedicineRecordDocumentEquality();

  @override
  bool equals(MedicineRecord? e1, MedicineRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.dailyDose == e2?.dailyDose &&
        e1?.pillsNumber == e2?.pillsNumber &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.prescriptionId == e2?.prescriptionId;
  }

  @override
  int hash(MedicineRecord? e) => const ListEquality().hash([
        e?.name,
        e?.dailyDose,
        e?.pillsNumber,
        e?.description,
        e?.image,
        e?.prescriptionId
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicineRecord;
}
