import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParticipantsRecord extends FirestoreRecord {
  ParticipantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('participants')
          : FirebaseFirestore.instance.collectionGroup('participants');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('participants').doc(id);

  static Stream<ParticipantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParticipantsRecord.fromSnapshot(s));

  static Future<ParticipantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParticipantsRecord.fromSnapshot(s));

  static ParticipantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParticipantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParticipantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParticipantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParticipantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParticipantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParticipantsRecordData({
  String? uid,
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParticipantsRecordDocumentEquality
    implements Equality<ParticipantsRecord> {
  const ParticipantsRecordDocumentEquality();

  @override
  bool equals(ParticipantsRecord? e1, ParticipantsRecord? e2) {
    return e1?.uid == e2?.uid && e1?.userID == e2?.userID;
  }

  @override
  int hash(ParticipantsRecord? e) =>
      const ListEquality().hash([e?.uid, e?.userID]);

  @override
  bool isValidKey(Object? o) => o is ParticipantsRecord;
}
