import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RidesRecord extends FirestoreRecord {
  RidesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "eventTime" field.
  DateTime? _eventTime;
  DateTime? get eventTime => _eventTime;
  bool hasEventTime() => _eventTime != null;

  // "numberRiders" field.
  int? _numberRiders;
  int get numberRiders => _numberRiders ?? 0;
  bool hasNumberRiders() => _numberRiders != null;

  // "rideLength" field.
  double? _rideLength;
  double get rideLength => _rideLength ?? 0.0;
  bool hasRideLength() => _rideLength != null;

  // "rideLocation" field.
  String? _rideLocation;
  String get rideLocation => _rideLocation ?? '';
  bool hasRideLocation() => _rideLocation != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _coverImage = snapshotData['coverImage'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _eventTime = snapshotData['eventTime'] as DateTime?;
    _numberRiders = castToType<int>(snapshotData['numberRiders']);
    _rideLength = castToType<double>(snapshotData['rideLength']);
    _rideLocation = snapshotData['rideLocation'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rides');

  static Stream<RidesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RidesRecord.fromSnapshot(s));

  static Future<RidesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RidesRecord.fromSnapshot(s));

  static RidesRecord fromSnapshot(DocumentSnapshot snapshot) => RidesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RidesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RidesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RidesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RidesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRidesRecordData({
  String? description,
  String? coverImage,
  DateTime? createdTime,
  DateTime? eventTime,
  int? numberRiders,
  double? rideLength,
  String? rideLocation,
  DocumentReference? owner,
  String? category,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'coverImage': coverImage,
      'createdTime': createdTime,
      'eventTime': eventTime,
      'numberRiders': numberRiders,
      'rideLength': rideLength,
      'rideLocation': rideLocation,
      'owner': owner,
      'category': category,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class RidesRecordDocumentEquality implements Equality<RidesRecord> {
  const RidesRecordDocumentEquality();

  @override
  bool equals(RidesRecord? e1, RidesRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.coverImage == e2?.coverImage &&
        e1?.createdTime == e2?.createdTime &&
        e1?.eventTime == e2?.eventTime &&
        e1?.numberRiders == e2?.numberRiders &&
        e1?.rideLength == e2?.rideLength &&
        e1?.rideLocation == e2?.rideLocation &&
        e1?.owner == e2?.owner &&
        e1?.category == e2?.category &&
        e1?.name == e2?.name;
  }

  @override
  int hash(RidesRecord? e) => const ListEquality().hash([
        e?.description,
        e?.coverImage,
        e?.createdTime,
        e?.eventTime,
        e?.numberRiders,
        e?.rideLength,
        e?.rideLocation,
        e?.owner,
        e?.category,
        e?.name
      ]);

  @override
  bool isValidKey(Object? o) => o is RidesRecord;
}
