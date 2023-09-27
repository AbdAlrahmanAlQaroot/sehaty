import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppointmentRecord extends FirestoreRecord {
  AppointmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "appointment_id" field.
  int? _appointmentId;
  int get appointmentId => _appointmentId ?? 0;
  bool hasAppointmentId() => _appointmentId != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _appointmentId = castToType<int>(snapshotData['appointment_id']);
    _date = snapshotData['date'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointment');

  static Stream<AppointmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentRecord.fromSnapshot(s));

  static Future<AppointmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentRecord.fromSnapshot(s));

  static AppointmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentRecordData({
  int? appointmentId,
  DateTime? date,
  String? status,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appointment_id': appointmentId,
      'date': date,
      'status': status,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentRecordDocumentEquality implements Equality<AppointmentRecord> {
  const AppointmentRecordDocumentEquality();

  @override
  bool equals(AppointmentRecord? e1, AppointmentRecord? e2) {
    return e1?.appointmentId == e2?.appointmentId &&
        e1?.date == e2?.date &&
        e1?.status == e2?.status &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(AppointmentRecord? e) => const ListEquality()
      .hash([e?.appointmentId, e?.date, e?.status, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is AppointmentRecord;
}
