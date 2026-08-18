// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCirclePermissionVars> _$gGetCirclePermissionVarsSerializer =
    _$GGetCirclePermissionVarsSerializer();
Serializer<GChangeBoardCreationPermissionVars>
_$gChangeBoardCreationPermissionVarsSerializer =
    _$GChangeBoardCreationPermissionVarsSerializer();

class _$GGetCirclePermissionVarsSerializer
    implements StructuredSerializer<GGetCirclePermissionVars> {
  @override
  final Iterable<Type> types = const [
    GGetCirclePermissionVars,
    _$GGetCirclePermissionVars,
  ];
  @override
  final String wireName = 'GGetCirclePermissionVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCirclePermissionVars object, {
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
  GGetCirclePermissionVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCirclePermissionVarsBuilder();

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

class _$GChangeBoardCreationPermissionVarsSerializer
    implements StructuredSerializer<GChangeBoardCreationPermissionVars> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardCreationPermissionVars,
    _$GChangeBoardCreationPermissionVars,
  ];
  @override
  final String wireName = 'GChangeBoardCreationPermissionVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardCreationPermissionVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GChangeBoardCreationPermissionInput),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardCreationPermissionVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardCreationPermissionVarsBuilder();

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
                    _i2.GChangeBoardCreationPermissionInput,
                  ),
                )!
                as _i2.GChangeBoardCreationPermissionInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCirclePermissionVars extends GGetCirclePermissionVars {
  @override
  final String circleId;

  factory _$GGetCirclePermissionVars([
    void Function(GGetCirclePermissionVarsBuilder)? updates,
  ]) => (GGetCirclePermissionVarsBuilder()..update(updates))._build();

  _$GGetCirclePermissionVars._({required this.circleId}) : super._();
  @override
  GGetCirclePermissionVars rebuild(
    void Function(GGetCirclePermissionVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCirclePermissionVarsBuilder toBuilder() =>
      GGetCirclePermissionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCirclePermissionVars && circleId == other.circleId;
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
      r'GGetCirclePermissionVars',
    )..add('circleId', circleId)).toString();
  }
}

class GGetCirclePermissionVarsBuilder
    implements
        Builder<GGetCirclePermissionVars, GGetCirclePermissionVarsBuilder> {
  _$GGetCirclePermissionVars? _$v;

  String? _circleId;
  String? get circleId => _$this._circleId;
  set circleId(String? circleId) => _$this._circleId = circleId;

  GGetCirclePermissionVarsBuilder();

  GGetCirclePermissionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circleId = $v.circleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCirclePermissionVars other) {
    _$v = other as _$GGetCirclePermissionVars;
  }

  @override
  void update(void Function(GGetCirclePermissionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCirclePermissionVars build() => _build();

  _$GGetCirclePermissionVars _build() {
    final _$result =
        _$v ??
        _$GGetCirclePermissionVars._(
          circleId: BuiltValueNullFieldError.checkNotNull(
            circleId,
            r'GGetCirclePermissionVars',
            'circleId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeBoardCreationPermissionVars
    extends GChangeBoardCreationPermissionVars {
  @override
  final _i2.GChangeBoardCreationPermissionInput input;

  factory _$GChangeBoardCreationPermissionVars([
    void Function(GChangeBoardCreationPermissionVarsBuilder)? updates,
  ]) => (GChangeBoardCreationPermissionVarsBuilder()..update(updates))._build();

  _$GChangeBoardCreationPermissionVars._({required this.input}) : super._();
  @override
  GChangeBoardCreationPermissionVars rebuild(
    void Function(GChangeBoardCreationPermissionVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardCreationPermissionVarsBuilder toBuilder() =>
      GChangeBoardCreationPermissionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardCreationPermissionVars && input == other.input;
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
      r'GChangeBoardCreationPermissionVars',
    )..add('input', input)).toString();
  }
}

class GChangeBoardCreationPermissionVarsBuilder
    implements
        Builder<
          GChangeBoardCreationPermissionVars,
          GChangeBoardCreationPermissionVarsBuilder
        > {
  _$GChangeBoardCreationPermissionVars? _$v;

  _i2.GChangeBoardCreationPermissionInputBuilder? _input;
  _i2.GChangeBoardCreationPermissionInputBuilder get input =>
      _$this._input ??= _i2.GChangeBoardCreationPermissionInputBuilder();
  set input(_i2.GChangeBoardCreationPermissionInputBuilder? input) =>
      _$this._input = input;

  GChangeBoardCreationPermissionVarsBuilder();

  GChangeBoardCreationPermissionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardCreationPermissionVars other) {
    _$v = other as _$GChangeBoardCreationPermissionVars;
  }

  @override
  void update(
    void Function(GChangeBoardCreationPermissionVarsBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardCreationPermissionVars build() => _build();

  _$GChangeBoardCreationPermissionVars _build() {
    _$GChangeBoardCreationPermissionVars _$result;
    try {
      _$result =
          _$v ?? _$GChangeBoardCreationPermissionVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeBoardCreationPermissionVars',
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
