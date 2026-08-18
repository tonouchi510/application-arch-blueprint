// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetMyCirclesVars> _$gGetMyCirclesVarsSerializer =
    _$GGetMyCirclesVarsSerializer();
Serializer<GGetAllCirclesVars> _$gGetAllCirclesVarsSerializer =
    _$GGetAllCirclesVarsSerializer();
Serializer<GGetCircleVars> _$gGetCircleVarsSerializer =
    _$GGetCircleVarsSerializer();
Serializer<GGetCircleMembersVars> _$gGetCircleMembersVarsSerializer =
    _$GGetCircleMembersVarsSerializer();
Serializer<GLeaveCircleVars> _$gLeaveCircleVarsSerializer =
    _$GLeaveCircleVarsSerializer();
Serializer<GCreateCircleVars> _$gCreateCircleVarsSerializer =
    _$GCreateCircleVarsSerializer();
Serializer<GAddCircleMemberVars> _$gAddCircleMemberVarsSerializer =
    _$GAddCircleMemberVarsSerializer();
Serializer<GChangeCircleNameVars> _$gChangeCircleNameVarsSerializer =
    _$GChangeCircleNameVarsSerializer();
Serializer<GChangeCircleDescriptionVars>
_$gChangeCircleDescriptionVarsSerializer =
    _$GChangeCircleDescriptionVarsSerializer();
Serializer<GDelegateCircleOwnerVars> _$gDelegateCircleOwnerVarsSerializer =
    _$GDelegateCircleOwnerVarsSerializer();
Serializer<GDeleteCircleVars> _$gDeleteCircleVarsSerializer =
    _$GDeleteCircleVarsSerializer();

class _$GGetMyCirclesVarsSerializer
    implements StructuredSerializer<GGetMyCirclesVars> {
  @override
  final Iterable<Type> types = const [GGetMyCirclesVars, _$GGetMyCirclesVars];
  @override
  final String wireName = 'GGetMyCirclesVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetMyCirclesVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetMyCirclesVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetMyCirclesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid =
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

class _$GGetAllCirclesVarsSerializer
    implements StructuredSerializer<GGetAllCirclesVars> {
  @override
  final Iterable<Type> types = const [GGetAllCirclesVars, _$GGetAllCirclesVars];
  @override
  final String wireName = 'GGetAllCirclesVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAllCirclesVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return <Object?>[];
  }

  @override
  GGetAllCirclesVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GGetAllCirclesVarsBuilder().build();
  }
}

class _$GGetCircleVarsSerializer
    implements StructuredSerializer<GGetCircleVars> {
  @override
  final Iterable<Type> types = const [GGetCircleVars, _$GGetCircleVars];
  @override
  final String wireName = 'GGetCircleVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetCircleVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCircleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
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

class _$GGetCircleMembersVarsSerializer
    implements StructuredSerializer<GGetCircleMembersVars> {
  @override
  final Iterable<Type> types = const [
    GGetCircleMembersVars,
    _$GGetCircleMembersVars,
  ];
  @override
  final String wireName = 'GGetCircleMembersVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleMembersVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circleId',
      serializers.serialize(
        object.circleId,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GGetCircleMembersVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCircleMembersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circleId':
          result.circleId =
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

class _$GLeaveCircleVarsSerializer
    implements StructuredSerializer<GLeaveCircleVars> {
  @override
  final Iterable<Type> types = const [GLeaveCircleVars, _$GLeaveCircleVars];
  @override
  final String wireName = 'GLeaveCircleVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLeaveCircleVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circleId',
      serializers.serialize(
        object.circleId,
        specifiedType: const FullType(String),
      ),
      'userId',
      serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GLeaveCircleVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLeaveCircleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circleId':
          result.circleId =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'userId':
          result.userId =
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

class _$GCreateCircleVarsSerializer
    implements StructuredSerializer<GCreateCircleVars> {
  @override
  final Iterable<Type> types = const [GCreateCircleVars, _$GCreateCircleVars];
  @override
  final String wireName = 'GCreateCircleVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateCircleVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GCreateCircleInput),
      ),
    ];

    return result;
  }

  @override
  GCreateCircleVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateCircleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GCreateCircleInput),
                )!
                as _i2.GCreateCircleInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAddCircleMemberVarsSerializer
    implements StructuredSerializer<GAddCircleMemberVars> {
  @override
  final Iterable<Type> types = const [
    GAddCircleMemberVars,
    _$GAddCircleMemberVars,
  ];
  @override
  final String wireName = 'GAddCircleMemberVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddCircleMemberVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GAddCircleMemberInput),
      ),
    ];

    return result;
  }

  @override
  GAddCircleMemberVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddCircleMemberVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GAddCircleMemberInput),
                )!
                as _i2.GAddCircleMemberInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleNameVarsSerializer
    implements StructuredSerializer<GChangeCircleNameVars> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleNameVars,
    _$GChangeCircleNameVars,
  ];
  @override
  final String wireName = 'GChangeCircleNameVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleNameVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GChangeCircleNameInput),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleNameVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleNameVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GChangeCircleNameInput),
                )!
                as _i2.GChangeCircleNameInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleDescriptionVarsSerializer
    implements StructuredSerializer<GChangeCircleDescriptionVars> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleDescriptionVars,
    _$GChangeCircleDescriptionVars,
  ];
  @override
  final String wireName = 'GChangeCircleDescriptionVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleDescriptionVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GChangeCircleDescriptionInput),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleDescriptionVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleDescriptionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    _i2.GChangeCircleDescriptionInput,
                  ),
                )!
                as _i2.GChangeCircleDescriptionInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDelegateCircleOwnerVarsSerializer
    implements StructuredSerializer<GDelegateCircleOwnerVars> {
  @override
  final Iterable<Type> types = const [
    GDelegateCircleOwnerVars,
    _$GDelegateCircleOwnerVars,
  ];
  @override
  final String wireName = 'GDelegateCircleOwnerVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDelegateCircleOwnerVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GDelegateCircleOwnerInput),
      ),
    ];

    return result;
  }

  @override
  GDelegateCircleOwnerVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDelegateCircleOwnerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GDelegateCircleOwnerInput),
                )!
                as _i2.GDelegateCircleOwnerInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteCircleVarsSerializer
    implements StructuredSerializer<GDeleteCircleVars> {
  @override
  final Iterable<Type> types = const [GDeleteCircleVars, _$GDeleteCircleVars];
  @override
  final String wireName = 'GDeleteCircleVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteCircleVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GDeleteCircleInput),
      ),
    ];

    return result;
  }

  @override
  GDeleteCircleVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteCircleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GDeleteCircleInput),
                )!
                as _i2.GDeleteCircleInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyCirclesVars extends GGetMyCirclesVars {
  @override
  final String uid;

  factory _$GGetMyCirclesVars([
    void Function(GGetMyCirclesVarsBuilder)? updates,
  ]) => (GGetMyCirclesVarsBuilder()..update(updates))._build();

  _$GGetMyCirclesVars._({required this.uid}) : super._();
  @override
  GGetMyCirclesVars rebuild(void Function(GGetMyCirclesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyCirclesVarsBuilder toBuilder() =>
      GGetMyCirclesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyCirclesVars && uid == other.uid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GGetMyCirclesVars',
    )..add('uid', uid)).toString();
  }
}

class GGetMyCirclesVarsBuilder
    implements Builder<GGetMyCirclesVars, GGetMyCirclesVarsBuilder> {
  _$GGetMyCirclesVars? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  GGetMyCirclesVarsBuilder();

  GGetMyCirclesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyCirclesVars other) {
    _$v = other as _$GGetMyCirclesVars;
  }

  @override
  void update(void Function(GGetMyCirclesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetMyCirclesVars build() => _build();

  _$GGetMyCirclesVars _build() {
    final _$result =
        _$v ??
        _$GGetMyCirclesVars._(
          uid: BuiltValueNullFieldError.checkNotNull(
            uid,
            r'GGetMyCirclesVars',
            'uid',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllCirclesVars extends GGetAllCirclesVars {
  factory _$GGetAllCirclesVars([
    void Function(GGetAllCirclesVarsBuilder)? updates,
  ]) => (GGetAllCirclesVarsBuilder()..update(updates))._build();

  _$GGetAllCirclesVars._() : super._();
  @override
  GGetAllCirclesVars rebuild(
    void Function(GGetAllCirclesVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAllCirclesVarsBuilder toBuilder() =>
      GGetAllCirclesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllCirclesVars;
  }

  @override
  int get hashCode {
    return 912330680;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetAllCirclesVars').toString();
  }
}

class GGetAllCirclesVarsBuilder
    implements Builder<GGetAllCirclesVars, GGetAllCirclesVarsBuilder> {
  _$GGetAllCirclesVars? _$v;

  GGetAllCirclesVarsBuilder();

  @override
  void replace(GGetAllCirclesVars other) {
    _$v = other as _$GGetAllCirclesVars;
  }

  @override
  void update(void Function(GGetAllCirclesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllCirclesVars build() => _build();

  _$GGetAllCirclesVars _build() {
    final _$result = _$v ?? _$GGetAllCirclesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GGetCircleVars extends GGetCircleVars {
  @override
  final String id;

  factory _$GGetCircleVars([void Function(GGetCircleVarsBuilder)? updates]) =>
      (GGetCircleVarsBuilder()..update(updates))._build();

  _$GGetCircleVars._({required this.id}) : super._();
  @override
  GGetCircleVars rebuild(void Function(GGetCircleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCircleVarsBuilder toBuilder() => GGetCircleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GGetCircleVars',
    )..add('id', id)).toString();
  }
}

class GGetCircleVarsBuilder
    implements Builder<GGetCircleVars, GGetCircleVarsBuilder> {
  _$GGetCircleVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetCircleVarsBuilder();

  GGetCircleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleVars other) {
    _$v = other as _$GGetCircleVars;
  }

  @override
  void update(void Function(GGetCircleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleVars build() => _build();

  _$GGetCircleVars _build() {
    final _$result =
        _$v ??
        _$GGetCircleVars._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GGetCircleVars',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetCircleMembersVars extends GGetCircleMembersVars {
  @override
  final String circleId;

  factory _$GGetCircleMembersVars([
    void Function(GGetCircleMembersVarsBuilder)? updates,
  ]) => (GGetCircleMembersVarsBuilder()..update(updates))._build();

  _$GGetCircleMembersVars._({required this.circleId}) : super._();
  @override
  GGetCircleMembersVars rebuild(
    void Function(GGetCircleMembersVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCircleMembersVarsBuilder toBuilder() =>
      GGetCircleMembersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleMembersVars && circleId == other.circleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GGetCircleMembersVars',
    )..add('circleId', circleId)).toString();
  }
}

class GGetCircleMembersVarsBuilder
    implements Builder<GGetCircleMembersVars, GGetCircleMembersVarsBuilder> {
  _$GGetCircleMembersVars? _$v;

  String? _circleId;
  String? get circleId => _$this._circleId;
  set circleId(String? circleId) => _$this._circleId = circleId;

  GGetCircleMembersVarsBuilder();

  GGetCircleMembersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circleId = $v.circleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleMembersVars other) {
    _$v = other as _$GGetCircleMembersVars;
  }

  @override
  void update(void Function(GGetCircleMembersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleMembersVars build() => _build();

  _$GGetCircleMembersVars _build() {
    final _$result =
        _$v ??
        _$GGetCircleMembersVars._(
          circleId: BuiltValueNullFieldError.checkNotNull(
            circleId,
            r'GGetCircleMembersVars',
            'circleId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GLeaveCircleVars extends GLeaveCircleVars {
  @override
  final String circleId;
  @override
  final String userId;

  factory _$GLeaveCircleVars([
    void Function(GLeaveCircleVarsBuilder)? updates,
  ]) => (GLeaveCircleVarsBuilder()..update(updates))._build();

  _$GLeaveCircleVars._({required this.circleId, required this.userId})
    : super._();
  @override
  GLeaveCircleVars rebuild(void Function(GLeaveCircleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLeaveCircleVarsBuilder toBuilder() =>
      GLeaveCircleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLeaveCircleVars &&
        circleId == other.circleId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circleId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLeaveCircleVars')
          ..add('circleId', circleId)
          ..add('userId', userId))
        .toString();
  }
}

class GLeaveCircleVarsBuilder
    implements Builder<GLeaveCircleVars, GLeaveCircleVarsBuilder> {
  _$GLeaveCircleVars? _$v;

  String? _circleId;
  String? get circleId => _$this._circleId;
  set circleId(String? circleId) => _$this._circleId = circleId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GLeaveCircleVarsBuilder();

  GLeaveCircleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circleId = $v.circleId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLeaveCircleVars other) {
    _$v = other as _$GLeaveCircleVars;
  }

  @override
  void update(void Function(GLeaveCircleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLeaveCircleVars build() => _build();

  _$GLeaveCircleVars _build() {
    final _$result =
        _$v ??
        _$GLeaveCircleVars._(
          circleId: BuiltValueNullFieldError.checkNotNull(
            circleId,
            r'GLeaveCircleVars',
            'circleId',
          ),
          userId: BuiltValueNullFieldError.checkNotNull(
            userId,
            r'GLeaveCircleVars',
            'userId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCircleVars extends GCreateCircleVars {
  @override
  final _i2.GCreateCircleInput input;

  factory _$GCreateCircleVars([
    void Function(GCreateCircleVarsBuilder)? updates,
  ]) => (GCreateCircleVarsBuilder()..update(updates))._build();

  _$GCreateCircleVars._({required this.input}) : super._();
  @override
  GCreateCircleVars rebuild(void Function(GCreateCircleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCircleVarsBuilder toBuilder() =>
      GCreateCircleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCircleVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GCreateCircleVars',
    )..add('input', input)).toString();
  }
}

class GCreateCircleVarsBuilder
    implements Builder<GCreateCircleVars, GCreateCircleVarsBuilder> {
  _$GCreateCircleVars? _$v;

  _i2.GCreateCircleInputBuilder? _input;
  _i2.GCreateCircleInputBuilder get input =>
      _$this._input ??= _i2.GCreateCircleInputBuilder();
  set input(_i2.GCreateCircleInputBuilder? input) => _$this._input = input;

  GCreateCircleVarsBuilder();

  GCreateCircleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCircleVars other) {
    _$v = other as _$GCreateCircleVars;
  }

  @override
  void update(void Function(GCreateCircleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCircleVars build() => _build();

  _$GCreateCircleVars _build() {
    _$GCreateCircleVars _$result;
    try {
      _$result = _$v ?? _$GCreateCircleVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GCreateCircleVars',
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

class _$GAddCircleMemberVars extends GAddCircleMemberVars {
  @override
  final _i2.GAddCircleMemberInput input;

  factory _$GAddCircleMemberVars([
    void Function(GAddCircleMemberVarsBuilder)? updates,
  ]) => (GAddCircleMemberVarsBuilder()..update(updates))._build();

  _$GAddCircleMemberVars._({required this.input}) : super._();
  @override
  GAddCircleMemberVars rebuild(
    void Function(GAddCircleMemberVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAddCircleMemberVarsBuilder toBuilder() =>
      GAddCircleMemberVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddCircleMemberVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GAddCircleMemberVars',
    )..add('input', input)).toString();
  }
}

class GAddCircleMemberVarsBuilder
    implements Builder<GAddCircleMemberVars, GAddCircleMemberVarsBuilder> {
  _$GAddCircleMemberVars? _$v;

  _i2.GAddCircleMemberInputBuilder? _input;
  _i2.GAddCircleMemberInputBuilder get input =>
      _$this._input ??= _i2.GAddCircleMemberInputBuilder();
  set input(_i2.GAddCircleMemberInputBuilder? input) => _$this._input = input;

  GAddCircleMemberVarsBuilder();

  GAddCircleMemberVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddCircleMemberVars other) {
    _$v = other as _$GAddCircleMemberVars;
  }

  @override
  void update(void Function(GAddCircleMemberVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddCircleMemberVars build() => _build();

  _$GAddCircleMemberVars _build() {
    _$GAddCircleMemberVars _$result;
    try {
      _$result = _$v ?? _$GAddCircleMemberVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAddCircleMemberVars',
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

class _$GChangeCircleNameVars extends GChangeCircleNameVars {
  @override
  final _i2.GChangeCircleNameInput input;

  factory _$GChangeCircleNameVars([
    void Function(GChangeCircleNameVarsBuilder)? updates,
  ]) => (GChangeCircleNameVarsBuilder()..update(updates))._build();

  _$GChangeCircleNameVars._({required this.input}) : super._();
  @override
  GChangeCircleNameVars rebuild(
    void Function(GChangeCircleNameVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleNameVarsBuilder toBuilder() =>
      GChangeCircleNameVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleNameVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GChangeCircleNameVars',
    )..add('input', input)).toString();
  }
}

class GChangeCircleNameVarsBuilder
    implements Builder<GChangeCircleNameVars, GChangeCircleNameVarsBuilder> {
  _$GChangeCircleNameVars? _$v;

  _i2.GChangeCircleNameInputBuilder? _input;
  _i2.GChangeCircleNameInputBuilder get input =>
      _$this._input ??= _i2.GChangeCircleNameInputBuilder();
  set input(_i2.GChangeCircleNameInputBuilder? input) => _$this._input = input;

  GChangeCircleNameVarsBuilder();

  GChangeCircleNameVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleNameVars other) {
    _$v = other as _$GChangeCircleNameVars;
  }

  @override
  void update(void Function(GChangeCircleNameVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleNameVars build() => _build();

  _$GChangeCircleNameVars _build() {
    _$GChangeCircleNameVars _$result;
    try {
      _$result = _$v ?? _$GChangeCircleNameVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleNameVars',
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

class _$GChangeCircleDescriptionVars extends GChangeCircleDescriptionVars {
  @override
  final _i2.GChangeCircleDescriptionInput input;

  factory _$GChangeCircleDescriptionVars([
    void Function(GChangeCircleDescriptionVarsBuilder)? updates,
  ]) => (GChangeCircleDescriptionVarsBuilder()..update(updates))._build();

  _$GChangeCircleDescriptionVars._({required this.input}) : super._();
  @override
  GChangeCircleDescriptionVars rebuild(
    void Function(GChangeCircleDescriptionVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleDescriptionVarsBuilder toBuilder() =>
      GChangeCircleDescriptionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleDescriptionVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GChangeCircleDescriptionVars',
    )..add('input', input)).toString();
  }
}

class GChangeCircleDescriptionVarsBuilder
    implements
        Builder<
          GChangeCircleDescriptionVars,
          GChangeCircleDescriptionVarsBuilder
        > {
  _$GChangeCircleDescriptionVars? _$v;

  _i2.GChangeCircleDescriptionInputBuilder? _input;
  _i2.GChangeCircleDescriptionInputBuilder get input =>
      _$this._input ??= _i2.GChangeCircleDescriptionInputBuilder();
  set input(_i2.GChangeCircleDescriptionInputBuilder? input) =>
      _$this._input = input;

  GChangeCircleDescriptionVarsBuilder();

  GChangeCircleDescriptionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleDescriptionVars other) {
    _$v = other as _$GChangeCircleDescriptionVars;
  }

  @override
  void update(void Function(GChangeCircleDescriptionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleDescriptionVars build() => _build();

  _$GChangeCircleDescriptionVars _build() {
    _$GChangeCircleDescriptionVars _$result;
    try {
      _$result = _$v ?? _$GChangeCircleDescriptionVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleDescriptionVars',
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

class _$GDelegateCircleOwnerVars extends GDelegateCircleOwnerVars {
  @override
  final _i2.GDelegateCircleOwnerInput input;

  factory _$GDelegateCircleOwnerVars([
    void Function(GDelegateCircleOwnerVarsBuilder)? updates,
  ]) => (GDelegateCircleOwnerVarsBuilder()..update(updates))._build();

  _$GDelegateCircleOwnerVars._({required this.input}) : super._();
  @override
  GDelegateCircleOwnerVars rebuild(
    void Function(GDelegateCircleOwnerVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDelegateCircleOwnerVarsBuilder toBuilder() =>
      GDelegateCircleOwnerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDelegateCircleOwnerVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GDelegateCircleOwnerVars',
    )..add('input', input)).toString();
  }
}

class GDelegateCircleOwnerVarsBuilder
    implements
        Builder<GDelegateCircleOwnerVars, GDelegateCircleOwnerVarsBuilder> {
  _$GDelegateCircleOwnerVars? _$v;

  _i2.GDelegateCircleOwnerInputBuilder? _input;
  _i2.GDelegateCircleOwnerInputBuilder get input =>
      _$this._input ??= _i2.GDelegateCircleOwnerInputBuilder();
  set input(_i2.GDelegateCircleOwnerInputBuilder? input) =>
      _$this._input = input;

  GDelegateCircleOwnerVarsBuilder();

  GDelegateCircleOwnerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDelegateCircleOwnerVars other) {
    _$v = other as _$GDelegateCircleOwnerVars;
  }

  @override
  void update(void Function(GDelegateCircleOwnerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDelegateCircleOwnerVars build() => _build();

  _$GDelegateCircleOwnerVars _build() {
    _$GDelegateCircleOwnerVars _$result;
    try {
      _$result = _$v ?? _$GDelegateCircleOwnerVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDelegateCircleOwnerVars',
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

class _$GDeleteCircleVars extends GDeleteCircleVars {
  @override
  final _i2.GDeleteCircleInput input;

  factory _$GDeleteCircleVars([
    void Function(GDeleteCircleVarsBuilder)? updates,
  ]) => (GDeleteCircleVarsBuilder()..update(updates))._build();

  _$GDeleteCircleVars._({required this.input}) : super._();
  @override
  GDeleteCircleVars rebuild(void Function(GDeleteCircleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteCircleVarsBuilder toBuilder() =>
      GDeleteCircleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCircleVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GDeleteCircleVars',
    )..add('input', input)).toString();
  }
}

class GDeleteCircleVarsBuilder
    implements Builder<GDeleteCircleVars, GDeleteCircleVarsBuilder> {
  _$GDeleteCircleVars? _$v;

  _i2.GDeleteCircleInputBuilder? _input;
  _i2.GDeleteCircleInputBuilder get input =>
      _$this._input ??= _i2.GDeleteCircleInputBuilder();
  set input(_i2.GDeleteCircleInputBuilder? input) => _$this._input = input;

  GDeleteCircleVarsBuilder();

  GDeleteCircleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCircleVars other) {
    _$v = other as _$GDeleteCircleVars;
  }

  @override
  void update(void Function(GDeleteCircleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCircleVars build() => _build();

  _$GDeleteCircleVars _build() {
    _$GDeleteCircleVars _$result;
    try {
      _$result = _$v ?? _$GDeleteCircleVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDeleteCircleVars',
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
