// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCirclePermissionData> _$gGetCirclePermissionDataSerializer =
    _$GGetCirclePermissionDataSerializer();
Serializer<GGetCirclePermissionData_circle_permissions_by_pk>
_$gGetCirclePermissionDataCirclePermissionsByPkSerializer =
    _$GGetCirclePermissionData_circle_permissions_by_pkSerializer();
Serializer<GChangeBoardCreationPermissionData>
_$gChangeBoardCreationPermissionDataSerializer =
    _$GChangeBoardCreationPermissionDataSerializer();

class _$GGetCirclePermissionDataSerializer
    implements StructuredSerializer<GGetCirclePermissionData> {
  @override
  final Iterable<Type> types = const [
    GGetCirclePermissionData,
    _$GGetCirclePermissionData,
  ];
  @override
  final String wireName = 'GGetCirclePermissionData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCirclePermissionData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.circle_permissions_by_pk;
    if (value != null) {
      result
        ..add('circle_permissions_by_pk')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GGetCirclePermissionData_circle_permissions_by_pk,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GGetCirclePermissionData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCirclePermissionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_permissions_by_pk':
          result.circle_permissions_by_pk.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCirclePermissionData_circle_permissions_by_pk,
                  ),
                )!
                as GGetCirclePermissionData_circle_permissions_by_pk,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCirclePermissionData_circle_permissions_by_pkSerializer
    implements
        StructuredSerializer<
          GGetCirclePermissionData_circle_permissions_by_pk
        > {
  @override
  final Iterable<Type> types = const [
    GGetCirclePermissionData_circle_permissions_by_pk,
    _$GGetCirclePermissionData_circle_permissions_by_pk,
  ];
  @override
  final String wireName = 'GGetCirclePermissionData_circle_permissions_by_pk';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCirclePermissionData_circle_permissions_by_pk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'circle_uuid',
      serializers.serialize(
        object.circle_uuid,
        specifiedType: const FullType(String),
      ),
      'permission_board_creation',
      serializers.serialize(
        object.permission_board_creation,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GGetCirclePermissionData_circle_permissions_by_pk deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCirclePermissionData_circle_permissions_by_pkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_uuid':
          result.circle_uuid =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'permission_board_creation':
          result.permission_board_creation =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeBoardCreationPermissionDataSerializer
    implements StructuredSerializer<GChangeBoardCreationPermissionData> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardCreationPermissionData,
    _$GChangeBoardCreationPermissionData,
  ];
  @override
  final String wireName = 'GChangeBoardCreationPermissionData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardCreationPermissionData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'change_board_creation_permission',
      serializers.serialize(
        object.change_board_creation_permission,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardCreationPermissionData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardCreationPermissionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'change_board_creation_permission':
          result.change_board_creation_permission =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCirclePermissionData extends GGetCirclePermissionData {
  @override
  final String G__typename;
  @override
  final GGetCirclePermissionData_circle_permissions_by_pk?
  circle_permissions_by_pk;

  factory _$GGetCirclePermissionData([
    void Function(GGetCirclePermissionDataBuilder)? updates,
  ]) => (GGetCirclePermissionDataBuilder()..update(updates))._build();

  _$GGetCirclePermissionData._({
    required this.G__typename,
    this.circle_permissions_by_pk,
  }) : super._();
  @override
  GGetCirclePermissionData rebuild(
    void Function(GGetCirclePermissionDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCirclePermissionDataBuilder toBuilder() =>
      GGetCirclePermissionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCirclePermissionData &&
        G__typename == other.G__typename &&
        circle_permissions_by_pk == other.circle_permissions_by_pk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, circle_permissions_by_pk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCirclePermissionData')
          ..add('G__typename', G__typename)
          ..add('circle_permissions_by_pk', circle_permissions_by_pk))
        .toString();
  }
}

class GGetCirclePermissionDataBuilder
    implements
        Builder<GGetCirclePermissionData, GGetCirclePermissionDataBuilder> {
  _$GGetCirclePermissionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetCirclePermissionData_circle_permissions_by_pkBuilder?
  _circle_permissions_by_pk;
  GGetCirclePermissionData_circle_permissions_by_pkBuilder
  get circle_permissions_by_pk => _$this._circle_permissions_by_pk ??=
      GGetCirclePermissionData_circle_permissions_by_pkBuilder();
  set circle_permissions_by_pk(
    GGetCirclePermissionData_circle_permissions_by_pkBuilder?
    circle_permissions_by_pk,
  ) => _$this._circle_permissions_by_pk = circle_permissions_by_pk;

  GGetCirclePermissionDataBuilder() {
    GGetCirclePermissionData._initializeBuilder(this);
  }

  GGetCirclePermissionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _circle_permissions_by_pk = $v.circle_permissions_by_pk?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCirclePermissionData other) {
    _$v = other as _$GGetCirclePermissionData;
  }

  @override
  void update(void Function(GGetCirclePermissionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCirclePermissionData build() => _build();

  _$GGetCirclePermissionData _build() {
    _$GGetCirclePermissionData _$result;
    try {
      _$result =
          _$v ??
          _$GGetCirclePermissionData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCirclePermissionData',
              'G__typename',
            ),
            circle_permissions_by_pk: _circle_permissions_by_pk?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circle_permissions_by_pk';
        _circle_permissions_by_pk?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCirclePermissionData',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCirclePermissionData_circle_permissions_by_pk
    extends GGetCirclePermissionData_circle_permissions_by_pk {
  @override
  final String G__typename;
  @override
  final String circle_uuid;
  @override
  final bool permission_board_creation;

  factory _$GGetCirclePermissionData_circle_permissions_by_pk([
    void Function(GGetCirclePermissionData_circle_permissions_by_pkBuilder)?
    updates,
  ]) =>
      (GGetCirclePermissionData_circle_permissions_by_pkBuilder()
            ..update(updates))
          ._build();

  _$GGetCirclePermissionData_circle_permissions_by_pk._({
    required this.G__typename,
    required this.circle_uuid,
    required this.permission_board_creation,
  }) : super._();
  @override
  GGetCirclePermissionData_circle_permissions_by_pk rebuild(
    void Function(GGetCirclePermissionData_circle_permissions_by_pkBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCirclePermissionData_circle_permissions_by_pkBuilder toBuilder() =>
      GGetCirclePermissionData_circle_permissions_by_pkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCirclePermissionData_circle_permissions_by_pk &&
        G__typename == other.G__typename &&
        circle_uuid == other.circle_uuid &&
        permission_board_creation == other.permission_board_creation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, circle_uuid.hashCode);
    _$hash = $jc(_$hash, permission_board_creation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCirclePermissionData_circle_permissions_by_pk',
          )
          ..add('G__typename', G__typename)
          ..add('circle_uuid', circle_uuid)
          ..add('permission_board_creation', permission_board_creation))
        .toString();
  }
}

class GGetCirclePermissionData_circle_permissions_by_pkBuilder
    implements
        Builder<
          GGetCirclePermissionData_circle_permissions_by_pk,
          GGetCirclePermissionData_circle_permissions_by_pkBuilder
        > {
  _$GGetCirclePermissionData_circle_permissions_by_pk? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _circle_uuid;
  String? get circle_uuid => _$this._circle_uuid;
  set circle_uuid(String? circle_uuid) => _$this._circle_uuid = circle_uuid;

  bool? _permission_board_creation;
  bool? get permission_board_creation => _$this._permission_board_creation;
  set permission_board_creation(bool? permission_board_creation) =>
      _$this._permission_board_creation = permission_board_creation;

  GGetCirclePermissionData_circle_permissions_by_pkBuilder() {
    GGetCirclePermissionData_circle_permissions_by_pk._initializeBuilder(this);
  }

  GGetCirclePermissionData_circle_permissions_by_pkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _circle_uuid = $v.circle_uuid;
      _permission_board_creation = $v.permission_board_creation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCirclePermissionData_circle_permissions_by_pk other) {
    _$v = other as _$GGetCirclePermissionData_circle_permissions_by_pk;
  }

  @override
  void update(
    void Function(GGetCirclePermissionData_circle_permissions_by_pkBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCirclePermissionData_circle_permissions_by_pk build() => _build();

  _$GGetCirclePermissionData_circle_permissions_by_pk _build() {
    final _$result =
        _$v ??
        _$GGetCirclePermissionData_circle_permissions_by_pk._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCirclePermissionData_circle_permissions_by_pk',
            'G__typename',
          ),
          circle_uuid: BuiltValueNullFieldError.checkNotNull(
            circle_uuid,
            r'GGetCirclePermissionData_circle_permissions_by_pk',
            'circle_uuid',
          ),
          permission_board_creation: BuiltValueNullFieldError.checkNotNull(
            permission_board_creation,
            r'GGetCirclePermissionData_circle_permissions_by_pk',
            'permission_board_creation',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeBoardCreationPermissionData
    extends GChangeBoardCreationPermissionData {
  @override
  final String G__typename;
  @override
  final bool change_board_creation_permission;

  factory _$GChangeBoardCreationPermissionData([
    void Function(GChangeBoardCreationPermissionDataBuilder)? updates,
  ]) => (GChangeBoardCreationPermissionDataBuilder()..update(updates))._build();

  _$GChangeBoardCreationPermissionData._({
    required this.G__typename,
    required this.change_board_creation_permission,
  }) : super._();
  @override
  GChangeBoardCreationPermissionData rebuild(
    void Function(GChangeBoardCreationPermissionDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardCreationPermissionDataBuilder toBuilder() =>
      GChangeBoardCreationPermissionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardCreationPermissionData &&
        G__typename == other.G__typename &&
        change_board_creation_permission ==
            other.change_board_creation_permission;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, change_board_creation_permission.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeBoardCreationPermissionData')
          ..add('G__typename', G__typename)
          ..add(
            'change_board_creation_permission',
            change_board_creation_permission,
          ))
        .toString();
  }
}

class GChangeBoardCreationPermissionDataBuilder
    implements
        Builder<
          GChangeBoardCreationPermissionData,
          GChangeBoardCreationPermissionDataBuilder
        > {
  _$GChangeBoardCreationPermissionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _change_board_creation_permission;
  bool? get change_board_creation_permission =>
      _$this._change_board_creation_permission;
  set change_board_creation_permission(
    bool? change_board_creation_permission,
  ) => _$this._change_board_creation_permission =
      change_board_creation_permission;

  GChangeBoardCreationPermissionDataBuilder() {
    GChangeBoardCreationPermissionData._initializeBuilder(this);
  }

  GChangeBoardCreationPermissionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _change_board_creation_permission = $v.change_board_creation_permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardCreationPermissionData other) {
    _$v = other as _$GChangeBoardCreationPermissionData;
  }

  @override
  void update(
    void Function(GChangeBoardCreationPermissionDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardCreationPermissionData build() => _build();

  _$GChangeBoardCreationPermissionData _build() {
    final _$result =
        _$v ??
        _$GChangeBoardCreationPermissionData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GChangeBoardCreationPermissionData',
            'G__typename',
          ),
          change_board_creation_permission:
              BuiltValueNullFieldError.checkNotNull(
                change_board_creation_permission,
                r'GChangeBoardCreationPermissionData',
                'change_board_creation_permission',
              ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
