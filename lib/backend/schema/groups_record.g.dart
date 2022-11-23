// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupsRecord> _$groupsRecordSerializer =
    new _$GroupsRecordSerializer();

class _$GroupsRecordSerializer implements StructuredSerializer<GroupsRecord> {
  @override
  final Iterable<Type> types = const [GroupsRecord, _$GroupsRecord];
  @override
  final String wireName = 'GroupsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GroupsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupDp;
    if (value != null) {
      result
        ..add('group_dp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grpCp;
    if (value != null) {
      result
        ..add('grp_cp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupName;
    if (value != null) {
      result
        ..add('group_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupDec;
    if (value != null) {
      result
        ..add('group_dec')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupMembers;
    if (value != null) {
      result
        ..add('group_members')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GroupsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'group_dp':
          result.groupDp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grp_cp':
          result.grpCp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'group_name':
          result.groupName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'group_dec':
          result.groupDec = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'group_members':
          result.groupMembers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GroupsRecord extends GroupsRecord {
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? userName;
  @override
  final String? groupDp;
  @override
  final String? grpCp;
  @override
  final String? groupName;
  @override
  final String? groupDec;
  @override
  final int? groupMembers;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GroupsRecord([void Function(GroupsRecordBuilder)? updates]) =>
      (new GroupsRecordBuilder()..update(updates))._build();

  _$GroupsRecord._(
      {this.displayName,
      this.photoUrl,
      this.userName,
      this.groupDp,
      this.grpCp,
      this.groupName,
      this.groupDec,
      this.groupMembers,
      this.ffRef})
      : super._();

  @override
  GroupsRecord rebuild(void Function(GroupsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupsRecordBuilder toBuilder() => new GroupsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupsRecord &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        userName == other.userName &&
        groupDp == other.groupDp &&
        grpCp == other.grpCp &&
        groupName == other.groupName &&
        groupDec == other.groupDec &&
        groupMembers == other.groupMembers &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, displayName.hashCode),
                                    photoUrl.hashCode),
                                userName.hashCode),
                            groupDp.hashCode),
                        grpCp.hashCode),
                    groupName.hashCode),
                groupDec.hashCode),
            groupMembers.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupsRecord')
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('userName', userName)
          ..add('groupDp', groupDp)
          ..add('grpCp', grpCp)
          ..add('groupName', groupName)
          ..add('groupDec', groupDec)
          ..add('groupMembers', groupMembers)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GroupsRecordBuilder
    implements Builder<GroupsRecord, GroupsRecordBuilder> {
  _$GroupsRecord? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _groupDp;
  String? get groupDp => _$this._groupDp;
  set groupDp(String? groupDp) => _$this._groupDp = groupDp;

  String? _grpCp;
  String? get grpCp => _$this._grpCp;
  set grpCp(String? grpCp) => _$this._grpCp = grpCp;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _groupDec;
  String? get groupDec => _$this._groupDec;
  set groupDec(String? groupDec) => _$this._groupDec = groupDec;

  int? _groupMembers;
  int? get groupMembers => _$this._groupMembers;
  set groupMembers(int? groupMembers) => _$this._groupMembers = groupMembers;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GroupsRecordBuilder() {
    GroupsRecord._initializeBuilder(this);
  }

  GroupsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _userName = $v.userName;
      _groupDp = $v.groupDp;
      _grpCp = $v.grpCp;
      _groupName = $v.groupName;
      _groupDec = $v.groupDec;
      _groupMembers = $v.groupMembers;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupsRecord;
  }

  @override
  void update(void Function(GroupsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupsRecord build() => _build();

  _$GroupsRecord _build() {
    final _$result = _$v ??
        new _$GroupsRecord._(
            displayName: displayName,
            photoUrl: photoUrl,
            userName: userName,
            groupDp: groupDp,
            grpCp: grpCp,
            groupName: groupName,
            groupDec: groupDec,
            groupMembers: groupMembers,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
