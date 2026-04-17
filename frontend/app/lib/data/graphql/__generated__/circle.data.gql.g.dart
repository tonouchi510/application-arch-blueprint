// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateCircleData> _$gCreateCircleDataSerializer =
    _$GCreateCircleDataSerializer();
Serializer<GCreateCircleData_create_circle>
_$gCreateCircleDataCreateCircleSerializer =
    _$GCreateCircleData_create_circleSerializer();
Serializer<GAddCircleMemberData> _$gAddCircleMemberDataSerializer =
    _$GAddCircleMemberDataSerializer();
Serializer<GChangeCircleNameData> _$gChangeCircleNameDataSerializer =
    _$GChangeCircleNameDataSerializer();
Serializer<GChangeCircleNameData_change_circle_name>
_$gChangeCircleNameDataChangeCircleNameSerializer =
    _$GChangeCircleNameData_change_circle_nameSerializer();
Serializer<GChangeCircleDescriptionData>
_$gChangeCircleDescriptionDataSerializer =
    _$GChangeCircleDescriptionDataSerializer();
Serializer<GChangeCircleDescriptionData_change_circle_description>
_$gChangeCircleDescriptionDataChangeCircleDescriptionSerializer =
    _$GChangeCircleDescriptionData_change_circle_descriptionSerializer();
Serializer<GDelegateCircleOwnerData> _$gDelegateCircleOwnerDataSerializer =
    _$GDelegateCircleOwnerDataSerializer();
Serializer<GDelegateCircleOwnerData_delegate_circle_owner>
_$gDelegateCircleOwnerDataDelegateCircleOwnerSerializer =
    _$GDelegateCircleOwnerData_delegate_circle_ownerSerializer();
Serializer<GDeleteCircleData> _$gDeleteCircleDataSerializer =
    _$GDeleteCircleDataSerializer();

class _$GCreateCircleDataSerializer
    implements StructuredSerializer<GCreateCircleData> {
  @override
  final Iterable<Type> types = const [GCreateCircleData, _$GCreateCircleData];
  @override
  final String wireName = 'GCreateCircleData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateCircleData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'create_circle',
      serializers.serialize(
        object.create_circle,
        specifiedType: const FullType(GCreateCircleData_create_circle),
      ),
    ];

    return result;
  }

  @override
  GCreateCircleData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateCircleDataBuilder();

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
        case 'create_circle':
          result.create_circle.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GCreateCircleData_create_circle,
                  ),
                )!
                as GCreateCircleData_create_circle,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCircleData_create_circleSerializer
    implements StructuredSerializer<GCreateCircleData_create_circle> {
  @override
  final Iterable<Type> types = const [
    GCreateCircleData_create_circle,
    _$GCreateCircleData_create_circle,
  ];
  @override
  final String wireName = 'GCreateCircleData_create_circle';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateCircleData_create_circle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'id',
      serializers.serialize(
        object.id,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GCreateCircleData_create_circle deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateCircleData_create_circleBuilder();

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
        case 'id':
          result.id.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddCircleMemberDataSerializer
    implements StructuredSerializer<GAddCircleMemberData> {
  @override
  final Iterable<Type> types = const [
    GAddCircleMemberData,
    _$GAddCircleMemberData,
  ];
  @override
  final String wireName = 'GAddCircleMemberData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddCircleMemberData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'add_circle_member',
      serializers.serialize(
        object.add_circle_member,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GAddCircleMemberData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddCircleMemberDataBuilder();

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
        case 'add_circle_member':
          result.add_circle_member =
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

class _$GChangeCircleNameDataSerializer
    implements StructuredSerializer<GChangeCircleNameData> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleNameData,
    _$GChangeCircleNameData,
  ];
  @override
  final String wireName = 'GChangeCircleNameData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleNameData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'change_circle_name',
      serializers.serialize(
        object.change_circle_name,
        specifiedType: const FullType(GChangeCircleNameData_change_circle_name),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleNameData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleNameDataBuilder();

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
        case 'change_circle_name':
          result.change_circle_name.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangeCircleNameData_change_circle_name,
                  ),
                )!
                as GChangeCircleNameData_change_circle_name,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleNameData_change_circle_nameSerializer
    implements StructuredSerializer<GChangeCircleNameData_change_circle_name> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleNameData_change_circle_name,
    _$GChangeCircleNameData_change_circle_name,
  ];
  @override
  final String wireName = 'GChangeCircleNameData_change_circle_name';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleNameData_change_circle_name object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'id',
      serializers.serialize(
        object.id,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleNameData_change_circle_name deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleNameData_change_circle_nameBuilder();

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
        case 'id':
          result.id.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleDescriptionDataSerializer
    implements StructuredSerializer<GChangeCircleDescriptionData> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleDescriptionData,
    _$GChangeCircleDescriptionData,
  ];
  @override
  final String wireName = 'GChangeCircleDescriptionData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleDescriptionData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'change_circle_description',
      serializers.serialize(
        object.change_circle_description,
        specifiedType: const FullType(
          GChangeCircleDescriptionData_change_circle_description,
        ),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleDescriptionData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleDescriptionDataBuilder();

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
        case 'change_circle_description':
          result.change_circle_description.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangeCircleDescriptionData_change_circle_description,
                  ),
                )!
                as GChangeCircleDescriptionData_change_circle_description,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleDescriptionData_change_circle_descriptionSerializer
    implements
        StructuredSerializer<
          GChangeCircleDescriptionData_change_circle_description
        > {
  @override
  final Iterable<Type> types = const [
    GChangeCircleDescriptionData_change_circle_description,
    _$GChangeCircleDescriptionData_change_circle_description,
  ];
  @override
  final String wireName =
      'GChangeCircleDescriptionData_change_circle_description';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleDescriptionData_change_circle_description object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'id',
      serializers.serialize(
        object.id,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleDescriptionData_change_circle_description deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GChangeCircleDescriptionData_change_circle_descriptionBuilder();

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
        case 'id':
          result.id.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDelegateCircleOwnerDataSerializer
    implements StructuredSerializer<GDelegateCircleOwnerData> {
  @override
  final Iterable<Type> types = const [
    GDelegateCircleOwnerData,
    _$GDelegateCircleOwnerData,
  ];
  @override
  final String wireName = 'GDelegateCircleOwnerData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDelegateCircleOwnerData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'delegate_circle_owner',
      serializers.serialize(
        object.delegate_circle_owner,
        specifiedType: const FullType(
          GDelegateCircleOwnerData_delegate_circle_owner,
        ),
      ),
    ];

    return result;
  }

  @override
  GDelegateCircleOwnerData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDelegateCircleOwnerDataBuilder();

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
        case 'delegate_circle_owner':
          result.delegate_circle_owner.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GDelegateCircleOwnerData_delegate_circle_owner,
                  ),
                )!
                as GDelegateCircleOwnerData_delegate_circle_owner,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDelegateCircleOwnerData_delegate_circle_ownerSerializer
    implements
        StructuredSerializer<GDelegateCircleOwnerData_delegate_circle_owner> {
  @override
  final Iterable<Type> types = const [
    GDelegateCircleOwnerData_delegate_circle_owner,
    _$GDelegateCircleOwnerData_delegate_circle_owner,
  ];
  @override
  final String wireName = 'GDelegateCircleOwnerData_delegate_circle_owner';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDelegateCircleOwnerData_delegate_circle_owner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'id',
      serializers.serialize(
        object.id,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GDelegateCircleOwnerData_delegate_circle_owner deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDelegateCircleOwnerData_delegate_circle_ownerBuilder();

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
        case 'id':
          result.id.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteCircleDataSerializer
    implements StructuredSerializer<GDeleteCircleData> {
  @override
  final Iterable<Type> types = const [GDeleteCircleData, _$GDeleteCircleData];
  @override
  final String wireName = 'GDeleteCircleData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteCircleData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'delete_circle',
      serializers.serialize(
        object.delete_circle,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GDeleteCircleData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteCircleDataBuilder();

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
        case 'delete_circle':
          result.delete_circle =
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

class _$GCreateCircleData extends GCreateCircleData {
  @override
  final String G__typename;
  @override
  final GCreateCircleData_create_circle create_circle;

  factory _$GCreateCircleData([
    void Function(GCreateCircleDataBuilder)? updates,
  ]) => (GCreateCircleDataBuilder()..update(updates))._build();

  _$GCreateCircleData._({
    required this.G__typename,
    required this.create_circle,
  }) : super._();
  @override
  GCreateCircleData rebuild(void Function(GCreateCircleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCircleDataBuilder toBuilder() =>
      GCreateCircleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCircleData &&
        G__typename == other.G__typename &&
        create_circle == other.create_circle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, create_circle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCircleData')
          ..add('G__typename', G__typename)
          ..add('create_circle', create_circle))
        .toString();
  }
}

class GCreateCircleDataBuilder
    implements Builder<GCreateCircleData, GCreateCircleDataBuilder> {
  _$GCreateCircleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateCircleData_create_circleBuilder? _create_circle;
  GCreateCircleData_create_circleBuilder get create_circle =>
      _$this._create_circle ??= GCreateCircleData_create_circleBuilder();
  set create_circle(GCreateCircleData_create_circleBuilder? create_circle) =>
      _$this._create_circle = create_circle;

  GCreateCircleDataBuilder() {
    GCreateCircleData._initializeBuilder(this);
  }

  GCreateCircleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _create_circle = $v.create_circle.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCircleData other) {
    _$v = other as _$GCreateCircleData;
  }

  @override
  void update(void Function(GCreateCircleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCircleData build() => _build();

  _$GCreateCircleData _build() {
    _$GCreateCircleData _$result;
    try {
      _$result =
          _$v ??
          _$GCreateCircleData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GCreateCircleData',
              'G__typename',
            ),
            create_circle: create_circle.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'create_circle';
        create_circle.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GCreateCircleData',
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

class _$GCreateCircleData_create_circle
    extends GCreateCircleData_create_circle {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GCreateCircleData_create_circle([
    void Function(GCreateCircleData_create_circleBuilder)? updates,
  ]) => (GCreateCircleData_create_circleBuilder()..update(updates))._build();

  _$GCreateCircleData_create_circle._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GCreateCircleData_create_circle rebuild(
    void Function(GCreateCircleData_create_circleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GCreateCircleData_create_circleBuilder toBuilder() =>
      GCreateCircleData_create_circleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCircleData_create_circle &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCircleData_create_circle')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GCreateCircleData_create_circleBuilder
    implements
        Builder<
          GCreateCircleData_create_circle,
          GCreateCircleData_create_circleBuilder
        > {
  _$GCreateCircleData_create_circle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GCreateCircleData_create_circleBuilder() {
    GCreateCircleData_create_circle._initializeBuilder(this);
  }

  GCreateCircleData_create_circleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCircleData_create_circle other) {
    _$v = other as _$GCreateCircleData_create_circle;
  }

  @override
  void update(void Function(GCreateCircleData_create_circleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCircleData_create_circle build() => _build();

  _$GCreateCircleData_create_circle _build() {
    _$GCreateCircleData_create_circle _$result;
    try {
      _$result =
          _$v ??
          _$GCreateCircleData_create_circle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GCreateCircleData_create_circle',
              'G__typename',
            ),
            id: id.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GCreateCircleData_create_circle',
              'name',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'GCreateCircleData_create_circle',
              'description',
            ),
            owner_id: BuiltValueNullFieldError.checkNotNull(
              owner_id,
              r'GCreateCircleData_create_circle',
              'owner_id',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GCreateCircleData_create_circle',
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

class _$GAddCircleMemberData extends GAddCircleMemberData {
  @override
  final String G__typename;
  @override
  final bool add_circle_member;

  factory _$GAddCircleMemberData([
    void Function(GAddCircleMemberDataBuilder)? updates,
  ]) => (GAddCircleMemberDataBuilder()..update(updates))._build();

  _$GAddCircleMemberData._({
    required this.G__typename,
    required this.add_circle_member,
  }) : super._();
  @override
  GAddCircleMemberData rebuild(
    void Function(GAddCircleMemberDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAddCircleMemberDataBuilder toBuilder() =>
      GAddCircleMemberDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddCircleMemberData &&
        G__typename == other.G__typename &&
        add_circle_member == other.add_circle_member;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, add_circle_member.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddCircleMemberData')
          ..add('G__typename', G__typename)
          ..add('add_circle_member', add_circle_member))
        .toString();
  }
}

class GAddCircleMemberDataBuilder
    implements Builder<GAddCircleMemberData, GAddCircleMemberDataBuilder> {
  _$GAddCircleMemberData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _add_circle_member;
  bool? get add_circle_member => _$this._add_circle_member;
  set add_circle_member(bool? add_circle_member) =>
      _$this._add_circle_member = add_circle_member;

  GAddCircleMemberDataBuilder() {
    GAddCircleMemberData._initializeBuilder(this);
  }

  GAddCircleMemberDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _add_circle_member = $v.add_circle_member;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddCircleMemberData other) {
    _$v = other as _$GAddCircleMemberData;
  }

  @override
  void update(void Function(GAddCircleMemberDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddCircleMemberData build() => _build();

  _$GAddCircleMemberData _build() {
    final _$result =
        _$v ??
        _$GAddCircleMemberData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAddCircleMemberData',
            'G__typename',
          ),
          add_circle_member: BuiltValueNullFieldError.checkNotNull(
            add_circle_member,
            r'GAddCircleMemberData',
            'add_circle_member',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeCircleNameData extends GChangeCircleNameData {
  @override
  final String G__typename;
  @override
  final GChangeCircleNameData_change_circle_name change_circle_name;

  factory _$GChangeCircleNameData([
    void Function(GChangeCircleNameDataBuilder)? updates,
  ]) => (GChangeCircleNameDataBuilder()..update(updates))._build();

  _$GChangeCircleNameData._({
    required this.G__typename,
    required this.change_circle_name,
  }) : super._();
  @override
  GChangeCircleNameData rebuild(
    void Function(GChangeCircleNameDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleNameDataBuilder toBuilder() =>
      GChangeCircleNameDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleNameData &&
        G__typename == other.G__typename &&
        change_circle_name == other.change_circle_name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, change_circle_name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeCircleNameData')
          ..add('G__typename', G__typename)
          ..add('change_circle_name', change_circle_name))
        .toString();
  }
}

class GChangeCircleNameDataBuilder
    implements Builder<GChangeCircleNameData, GChangeCircleNameDataBuilder> {
  _$GChangeCircleNameData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangeCircleNameData_change_circle_nameBuilder? _change_circle_name;
  GChangeCircleNameData_change_circle_nameBuilder get change_circle_name =>
      _$this._change_circle_name ??=
          GChangeCircleNameData_change_circle_nameBuilder();
  set change_circle_name(
    GChangeCircleNameData_change_circle_nameBuilder? change_circle_name,
  ) => _$this._change_circle_name = change_circle_name;

  GChangeCircleNameDataBuilder() {
    GChangeCircleNameData._initializeBuilder(this);
  }

  GChangeCircleNameDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _change_circle_name = $v.change_circle_name.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleNameData other) {
    _$v = other as _$GChangeCircleNameData;
  }

  @override
  void update(void Function(GChangeCircleNameDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleNameData build() => _build();

  _$GChangeCircleNameData _build() {
    _$GChangeCircleNameData _$result;
    try {
      _$result =
          _$v ??
          _$GChangeCircleNameData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeCircleNameData',
              'G__typename',
            ),
            change_circle_name: change_circle_name.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'change_circle_name';
        change_circle_name.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleNameData',
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

class _$GChangeCircleNameData_change_circle_name
    extends GChangeCircleNameData_change_circle_name {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GChangeCircleNameData_change_circle_name([
    void Function(GChangeCircleNameData_change_circle_nameBuilder)? updates,
  ]) => (GChangeCircleNameData_change_circle_nameBuilder()..update(updates))
      ._build();

  _$GChangeCircleNameData_change_circle_name._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GChangeCircleNameData_change_circle_name rebuild(
    void Function(GChangeCircleNameData_change_circle_nameBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleNameData_change_circle_nameBuilder toBuilder() =>
      GChangeCircleNameData_change_circle_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleNameData_change_circle_name &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChangeCircleNameData_change_circle_name',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GChangeCircleNameData_change_circle_nameBuilder
    implements
        Builder<
          GChangeCircleNameData_change_circle_name,
          GChangeCircleNameData_change_circle_nameBuilder
        > {
  _$GChangeCircleNameData_change_circle_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GChangeCircleNameData_change_circle_nameBuilder() {
    GChangeCircleNameData_change_circle_name._initializeBuilder(this);
  }

  GChangeCircleNameData_change_circle_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleNameData_change_circle_name other) {
    _$v = other as _$GChangeCircleNameData_change_circle_name;
  }

  @override
  void update(
    void Function(GChangeCircleNameData_change_circle_nameBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleNameData_change_circle_name build() => _build();

  _$GChangeCircleNameData_change_circle_name _build() {
    _$GChangeCircleNameData_change_circle_name _$result;
    try {
      _$result =
          _$v ??
          _$GChangeCircleNameData_change_circle_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeCircleNameData_change_circle_name',
              'G__typename',
            ),
            id: id.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GChangeCircleNameData_change_circle_name',
              'name',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'GChangeCircleNameData_change_circle_name',
              'description',
            ),
            owner_id: BuiltValueNullFieldError.checkNotNull(
              owner_id,
              r'GChangeCircleNameData_change_circle_name',
              'owner_id',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleNameData_change_circle_name',
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

class _$GChangeCircleDescriptionData extends GChangeCircleDescriptionData {
  @override
  final String G__typename;
  @override
  final GChangeCircleDescriptionData_change_circle_description
  change_circle_description;

  factory _$GChangeCircleDescriptionData([
    void Function(GChangeCircleDescriptionDataBuilder)? updates,
  ]) => (GChangeCircleDescriptionDataBuilder()..update(updates))._build();

  _$GChangeCircleDescriptionData._({
    required this.G__typename,
    required this.change_circle_description,
  }) : super._();
  @override
  GChangeCircleDescriptionData rebuild(
    void Function(GChangeCircleDescriptionDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleDescriptionDataBuilder toBuilder() =>
      GChangeCircleDescriptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleDescriptionData &&
        G__typename == other.G__typename &&
        change_circle_description == other.change_circle_description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, change_circle_description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeCircleDescriptionData')
          ..add('G__typename', G__typename)
          ..add('change_circle_description', change_circle_description))
        .toString();
  }
}

class GChangeCircleDescriptionDataBuilder
    implements
        Builder<
          GChangeCircleDescriptionData,
          GChangeCircleDescriptionDataBuilder
        > {
  _$GChangeCircleDescriptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangeCircleDescriptionData_change_circle_descriptionBuilder?
  _change_circle_description;
  GChangeCircleDescriptionData_change_circle_descriptionBuilder
  get change_circle_description => _$this._change_circle_description ??=
      GChangeCircleDescriptionData_change_circle_descriptionBuilder();
  set change_circle_description(
    GChangeCircleDescriptionData_change_circle_descriptionBuilder?
    change_circle_description,
  ) => _$this._change_circle_description = change_circle_description;

  GChangeCircleDescriptionDataBuilder() {
    GChangeCircleDescriptionData._initializeBuilder(this);
  }

  GChangeCircleDescriptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _change_circle_description = $v.change_circle_description.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleDescriptionData other) {
    _$v = other as _$GChangeCircleDescriptionData;
  }

  @override
  void update(void Function(GChangeCircleDescriptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleDescriptionData build() => _build();

  _$GChangeCircleDescriptionData _build() {
    _$GChangeCircleDescriptionData _$result;
    try {
      _$result =
          _$v ??
          _$GChangeCircleDescriptionData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeCircleDescriptionData',
              'G__typename',
            ),
            change_circle_description: change_circle_description.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'change_circle_description';
        change_circle_description.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleDescriptionData',
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

class _$GChangeCircleDescriptionData_change_circle_description
    extends GChangeCircleDescriptionData_change_circle_description {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GChangeCircleDescriptionData_change_circle_description([
    void Function(
      GChangeCircleDescriptionData_change_circle_descriptionBuilder,
    )?
    updates,
  ]) =>
      (GChangeCircleDescriptionData_change_circle_descriptionBuilder()
            ..update(updates))
          ._build();

  _$GChangeCircleDescriptionData_change_circle_description._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GChangeCircleDescriptionData_change_circle_description rebuild(
    void Function(GChangeCircleDescriptionData_change_circle_descriptionBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleDescriptionData_change_circle_descriptionBuilder toBuilder() =>
      GChangeCircleDescriptionData_change_circle_descriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleDescriptionData_change_circle_description &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChangeCircleDescriptionData_change_circle_description',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GChangeCircleDescriptionData_change_circle_descriptionBuilder
    implements
        Builder<
          GChangeCircleDescriptionData_change_circle_description,
          GChangeCircleDescriptionData_change_circle_descriptionBuilder
        > {
  _$GChangeCircleDescriptionData_change_circle_description? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GChangeCircleDescriptionData_change_circle_descriptionBuilder() {
    GChangeCircleDescriptionData_change_circle_description._initializeBuilder(
      this,
    );
  }

  GChangeCircleDescriptionData_change_circle_descriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleDescriptionData_change_circle_description other) {
    _$v = other as _$GChangeCircleDescriptionData_change_circle_description;
  }

  @override
  void update(
    void Function(
      GChangeCircleDescriptionData_change_circle_descriptionBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleDescriptionData_change_circle_description build() => _build();

  _$GChangeCircleDescriptionData_change_circle_description _build() {
    _$GChangeCircleDescriptionData_change_circle_description _$result;
    try {
      _$result =
          _$v ??
          _$GChangeCircleDescriptionData_change_circle_description._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeCircleDescriptionData_change_circle_description',
              'G__typename',
            ),
            id: id.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GChangeCircleDescriptionData_change_circle_description',
              'name',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'GChangeCircleDescriptionData_change_circle_description',
              'description',
            ),
            owner_id: BuiltValueNullFieldError.checkNotNull(
              owner_id,
              r'GChangeCircleDescriptionData_change_circle_description',
              'owner_id',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleDescriptionData_change_circle_description',
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

class _$GDelegateCircleOwnerData extends GDelegateCircleOwnerData {
  @override
  final String G__typename;
  @override
  final GDelegateCircleOwnerData_delegate_circle_owner delegate_circle_owner;

  factory _$GDelegateCircleOwnerData([
    void Function(GDelegateCircleOwnerDataBuilder)? updates,
  ]) => (GDelegateCircleOwnerDataBuilder()..update(updates))._build();

  _$GDelegateCircleOwnerData._({
    required this.G__typename,
    required this.delegate_circle_owner,
  }) : super._();
  @override
  GDelegateCircleOwnerData rebuild(
    void Function(GDelegateCircleOwnerDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDelegateCircleOwnerDataBuilder toBuilder() =>
      GDelegateCircleOwnerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDelegateCircleOwnerData &&
        G__typename == other.G__typename &&
        delegate_circle_owner == other.delegate_circle_owner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegate_circle_owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDelegateCircleOwnerData')
          ..add('G__typename', G__typename)
          ..add('delegate_circle_owner', delegate_circle_owner))
        .toString();
  }
}

class GDelegateCircleOwnerDataBuilder
    implements
        Builder<GDelegateCircleOwnerData, GDelegateCircleOwnerDataBuilder> {
  _$GDelegateCircleOwnerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDelegateCircleOwnerData_delegate_circle_ownerBuilder? _delegate_circle_owner;
  GDelegateCircleOwnerData_delegate_circle_ownerBuilder
  get delegate_circle_owner => _$this._delegate_circle_owner ??=
      GDelegateCircleOwnerData_delegate_circle_ownerBuilder();
  set delegate_circle_owner(
    GDelegateCircleOwnerData_delegate_circle_ownerBuilder?
    delegate_circle_owner,
  ) => _$this._delegate_circle_owner = delegate_circle_owner;

  GDelegateCircleOwnerDataBuilder() {
    GDelegateCircleOwnerData._initializeBuilder(this);
  }

  GDelegateCircleOwnerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegate_circle_owner = $v.delegate_circle_owner.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDelegateCircleOwnerData other) {
    _$v = other as _$GDelegateCircleOwnerData;
  }

  @override
  void update(void Function(GDelegateCircleOwnerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDelegateCircleOwnerData build() => _build();

  _$GDelegateCircleOwnerData _build() {
    _$GDelegateCircleOwnerData _$result;
    try {
      _$result =
          _$v ??
          _$GDelegateCircleOwnerData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GDelegateCircleOwnerData',
              'G__typename',
            ),
            delegate_circle_owner: delegate_circle_owner.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegate_circle_owner';
        delegate_circle_owner.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDelegateCircleOwnerData',
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

class _$GDelegateCircleOwnerData_delegate_circle_owner
    extends GDelegateCircleOwnerData_delegate_circle_owner {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GDelegateCircleOwnerData_delegate_circle_owner([
    void Function(GDelegateCircleOwnerData_delegate_circle_ownerBuilder)?
    updates,
  ]) =>
      (GDelegateCircleOwnerData_delegate_circle_ownerBuilder()..update(updates))
          ._build();

  _$GDelegateCircleOwnerData_delegate_circle_owner._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GDelegateCircleOwnerData_delegate_circle_owner rebuild(
    void Function(GDelegateCircleOwnerData_delegate_circle_ownerBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDelegateCircleOwnerData_delegate_circle_ownerBuilder toBuilder() =>
      GDelegateCircleOwnerData_delegate_circle_ownerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDelegateCircleOwnerData_delegate_circle_owner &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDelegateCircleOwnerData_delegate_circle_owner',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GDelegateCircleOwnerData_delegate_circle_ownerBuilder
    implements
        Builder<
          GDelegateCircleOwnerData_delegate_circle_owner,
          GDelegateCircleOwnerData_delegate_circle_ownerBuilder
        > {
  _$GDelegateCircleOwnerData_delegate_circle_owner? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GDelegateCircleOwnerData_delegate_circle_ownerBuilder() {
    GDelegateCircleOwnerData_delegate_circle_owner._initializeBuilder(this);
  }

  GDelegateCircleOwnerData_delegate_circle_ownerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDelegateCircleOwnerData_delegate_circle_owner other) {
    _$v = other as _$GDelegateCircleOwnerData_delegate_circle_owner;
  }

  @override
  void update(
    void Function(GDelegateCircleOwnerData_delegate_circle_ownerBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GDelegateCircleOwnerData_delegate_circle_owner build() => _build();

  _$GDelegateCircleOwnerData_delegate_circle_owner _build() {
    _$GDelegateCircleOwnerData_delegate_circle_owner _$result;
    try {
      _$result =
          _$v ??
          _$GDelegateCircleOwnerData_delegate_circle_owner._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GDelegateCircleOwnerData_delegate_circle_owner',
              'G__typename',
            ),
            id: id.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GDelegateCircleOwnerData_delegate_circle_owner',
              'name',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'GDelegateCircleOwnerData_delegate_circle_owner',
              'description',
            ),
            owner_id: BuiltValueNullFieldError.checkNotNull(
              owner_id,
              r'GDelegateCircleOwnerData_delegate_circle_owner',
              'owner_id',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDelegateCircleOwnerData_delegate_circle_owner',
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

class _$GDeleteCircleData extends GDeleteCircleData {
  @override
  final String G__typename;
  @override
  final bool delete_circle;

  factory _$GDeleteCircleData([
    void Function(GDeleteCircleDataBuilder)? updates,
  ]) => (GDeleteCircleDataBuilder()..update(updates))._build();

  _$GDeleteCircleData._({
    required this.G__typename,
    required this.delete_circle,
  }) : super._();
  @override
  GDeleteCircleData rebuild(void Function(GDeleteCircleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteCircleDataBuilder toBuilder() =>
      GDeleteCircleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCircleData &&
        G__typename == other.G__typename &&
        delete_circle == other.delete_circle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delete_circle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteCircleData')
          ..add('G__typename', G__typename)
          ..add('delete_circle', delete_circle))
        .toString();
  }
}

class GDeleteCircleDataBuilder
    implements Builder<GDeleteCircleData, GDeleteCircleDataBuilder> {
  _$GDeleteCircleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete_circle;
  bool? get delete_circle => _$this._delete_circle;
  set delete_circle(bool? delete_circle) =>
      _$this._delete_circle = delete_circle;

  GDeleteCircleDataBuilder() {
    GDeleteCircleData._initializeBuilder(this);
  }

  GDeleteCircleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delete_circle = $v.delete_circle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCircleData other) {
    _$v = other as _$GDeleteCircleData;
  }

  @override
  void update(void Function(GDeleteCircleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCircleData build() => _build();

  _$GDeleteCircleData _build() {
    final _$result =
        _$v ??
        _$GDeleteCircleData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GDeleteCircleData',
            'G__typename',
          ),
          delete_circle: BuiltValueNullFieldError.checkNotNull(
            delete_circle,
            r'GDeleteCircleData',
            'delete_circle',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
