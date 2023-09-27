import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeslotsRecord extends FirestoreRecord {
  TimeslotsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timeslot_id" field.
  int? _timeslotId;
  int get timeslotId => _timeslotId ?? 0;
  bool hasTimeslotId() => _timeslotId != null;

  // "starTime" field.
  DateTime? _starTime;
  DateTime? get starTime => _starTime;
  bool hasStarTime() => _starTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "available" field.
  bool? _available;
  bool get available => _available ?? false;
  bool hasAvailable() => _available != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _timeslotId = castToType<int>(snapshotData['timeslot_id']);
    _starTime = snapshotData['starTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _available = snapshotData['available'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('timeslots')
          : FirebaseFirestore.instance.collectionGroup('timeslots');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('timeslots').doc();

  static Stream<TimeslotsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimeslotsRecord.fromSnapshot(s));

  static Future<TimeslotsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimeslotsRecord.fromSnapshot(s));

  static TimeslotsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimeslotsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimeslotsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimeslotsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimeslotsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimeslotsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimeslotsRecordData({
  int? timeslotId,
  DateTime? starTime,
  DateTime? endTime,
  bool? available,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timeslot_id': timeslotId,
      'starTime': starTime,
      'endTime': endTime,
      'available': available,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimeslotsRecordDocumentEquality implements Equality<TimeslotsRecord> {
  const TimeslotsRecordDocumentEquality();

  @override
  bool equals(TimeslotsRecord? e1, TimeslotsRecord? e2) {
    return e1?.timeslotId == e2?.timeslotId &&
        e1?.starTime == e2?.starTime &&
        e1?.endTime == e2?.endTime &&
        e1?.available == e2?.available;
  }

  @override
  int hash(TimeslotsRecord? e) => const ListEquality()
      .hash([e?.timeslotId, e?.starTime, e?.endTime, e?.available]);

  @override
  bool isValidKey(Object? o) => o is TimeslotsRecord;
}
