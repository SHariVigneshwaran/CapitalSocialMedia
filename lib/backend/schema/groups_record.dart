import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'groups_record.g.dart';

abstract class GroupsRecord
    implements Built<GroupsRecord, GroupsRecordBuilder> {
  static Serializer<GroupsRecord> get serializer => _$groupsRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'group_dp')
  String? get groupDp;

  @BuiltValueField(wireName: 'grp_cp')
  String? get grpCp;

  @BuiltValueField(wireName: 'group_name')
  String? get groupName;

  @BuiltValueField(wireName: 'group_dec')
  String? get groupDec;

  @BuiltValueField(wireName: 'group_members')
  int? get groupMembers;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GroupsRecordBuilder builder) => builder
    ..displayName = ''
    ..photoUrl = ''
    ..userName = ''
    ..groupDp = ''
    ..grpCp = ''
    ..groupName = ''
    ..groupDec = ''
    ..groupMembers = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GroupsRecord._();
  factory GroupsRecord([void Function(GroupsRecordBuilder) updates]) =
      _$GroupsRecord;

  static GroupsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGroupsRecordData({
  String? displayName,
  String? photoUrl,
  String? userName,
  String? groupDp,
  String? grpCp,
  String? groupName,
  String? groupDec,
  int? groupMembers,
}) {
  final firestoreData = serializers.toFirestore(
    GroupsRecord.serializer,
    GroupsRecord(
      (g) => g
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..userName = userName
        ..groupDp = groupDp
        ..grpCp = grpCp
        ..groupName = groupName
        ..groupDec = groupDec
        ..groupMembers = groupMembers,
    ),
  );

  return firestoreData;
}
