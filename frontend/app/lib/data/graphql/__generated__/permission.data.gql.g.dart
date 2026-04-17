// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChangeBoardCreationPermissionData>
_$gChangeBoardCreationPermissionDataSerializer =
    _$GChangeBoardCreationPermissionDataSerializer();

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
