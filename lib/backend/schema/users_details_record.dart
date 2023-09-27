import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersDetailsRecord extends FirestoreRecord {
  UsersDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nationalID" field.
  int? _nationalID;
  int get nationalID => _nationalID ?? 0;
  bool hasNationalID() => _nationalID != null;

  // "DOB" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _nationalID = castToType<int>(snapshotData['nationalID']);
    _dob = snapshotData['DOB'] as DateTime?;
    _gender = snapshotData['Gender'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usersDetails');

  static Stream<UsersDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersDetailsRecord.fromSnapshot(s));

  static Future<UsersDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersDetailsRecord.fromSnapshot(s));

  static UsersDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersDetailsRecordData({
  int? nationalID,
  DateTime? dob,
  String? gender,
  DocumentReference? userID,
  String? email,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nationalID': nationalID,
      'DOB': dob,
      'Gender': gender,
      'userID': userID,
      'email': email,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersDetailsRecordDocumentEquality
    implements Equality<UsersDetailsRecord> {
  const UsersDetailsRecordDocumentEquality();

  @override
  bool equals(UsersDetailsRecord? e1, UsersDetailsRecord? e2) {
    return e1?.nationalID == e2?.nationalID &&
        e1?.dob == e2?.dob &&
        e1?.gender == e2?.gender &&
        e1?.userID == e2?.userID &&
        e1?.email == e2?.email &&
        e1?.name == e2?.name;
  }

  @override
  int hash(UsersDetailsRecord? e) => const ListEquality()
      .hash([e?.nationalID, e?.dob, e?.gender, e?.userID, e?.email, e?.name]);

  @override
  bool isValidKey(Object? o) => o is UsersDetailsRecord;
}
