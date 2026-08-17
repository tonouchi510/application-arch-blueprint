// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUsersVars> _$gGetUsersVarsSerializer =
    _$GGetUsersVarsSerializer();
Serializer<GUpdateUserAttributesVars> _$gUpdateUserAttributesVarsSerializer =
    _$GUpdateUserAttributesVarsSerializer();
Serializer<GDeleteUserVars> _$gDeleteUserVarsSerializer =
    _$GDeleteUserVarsSerializer();

class _$GGetUsersVarsSerializer implements StructuredSerializer<GGetUsersVars> {
  @override
  final Iterable<Type> types = const [GGetUsersVars, _$GGetUsersVars];
  @override
  final String wireName = 'GGetUsersVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetUsersVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'ids',
      serializers.serialize(
        object.ids,
        specifiedType: const FullType(BuiltList, const [
          const FullType(String),
        ]),
      ),
    ];

    return result;
  }

  @override
  GGetUsersVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetUsersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ids':
          result.ids.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(String),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserAttributesVarsSerializer
    implements StructuredSerializer<GUpdateUserAttributesVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserAttributesVars,
    _$GUpdateUserAttributesVars,
  ];
  @override
  final String wireName = 'GUpdateUserAttributesVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GUpdateUserAttributesVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GUpdateUserAttributesInput),
      ),
    ];

    return result;
  }

  @override
  GUpdateUserAttributesVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GUpdateUserAttributesVarsBuilder();

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
                  specifiedType: const FullType(_i2.GUpdateUserAttributesInput),
                )!
                as _i2.GUpdateUserAttributesInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteUserVarsSerializer
    implements StructuredSerializer<GDeleteUserVars> {
  @override
  final Iterable<Type> types = const [GDeleteUserVars, _$GDeleteUserVars];
  @override
  final String wireName = 'GDeleteUserVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteUserVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i2.GDeleteUserInput),
      ),
    ];

    return result;
  }

  @override
  GDeleteUserVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteUserVarsBuilder();

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
                  specifiedType: const FullType(_i2.GDeleteUserInput),
                )!
                as _i2.GDeleteUserInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUsersVars extends GGetUsersVars {
  @override
  final BuiltList<String> ids;

  factory _$GGetUsersVars([void Function(GGetUsersVarsBuilder)? updates]) =>
      (GGetUsersVarsBuilder()..update(updates))._build();

  _$GGetUsersVars._({required this.ids}) : super._();
  @override
  GGetUsersVars rebuild(void Function(GGetUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUsersVarsBuilder toBuilder() => GGetUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUsersVars && ids == other.ids;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GGetUsersVars',
    )..add('ids', ids)).toString();
  }
}

class GGetUsersVarsBuilder
    implements Builder<GGetUsersVars, GGetUsersVarsBuilder> {
  _$GGetUsersVars? _$v;

  ListBuilder<String>? _ids;
  ListBuilder<String> get ids => _$this._ids ??= ListBuilder<String>();
  set ids(ListBuilder<String>? ids) => _$this._ids = ids;

  GGetUsersVarsBuilder();

  GGetUsersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUsersVars other) {
    _$v = other as _$GGetUsersVars;
  }

  @override
  void update(void Function(GGetUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUsersVars build() => _build();

  _$GGetUsersVars _build() {
    _$GGetUsersVars _$result;
    try {
      _$result = _$v ?? _$GGetUsersVars._(ids: ids.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        ids.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetUsersVars',
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

class _$GUpdateUserAttributesVars extends GUpdateUserAttributesVars {
  @override
  final _i2.GUpdateUserAttributesInput input;

  factory _$GUpdateUserAttributesVars([
    void Function(GUpdateUserAttributesVarsBuilder)? updates,
  ]) => (GUpdateUserAttributesVarsBuilder()..update(updates))._build();

  _$GUpdateUserAttributesVars._({required this.input}) : super._();
  @override
  GUpdateUserAttributesVars rebuild(
    void Function(GUpdateUserAttributesVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GUpdateUserAttributesVarsBuilder toBuilder() =>
      GUpdateUserAttributesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserAttributesVars && input == other.input;
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
      r'GUpdateUserAttributesVars',
    )..add('input', input)).toString();
  }
}

class GUpdateUserAttributesVarsBuilder
    implements
        Builder<GUpdateUserAttributesVars, GUpdateUserAttributesVarsBuilder> {
  _$GUpdateUserAttributesVars? _$v;

  _i2.GUpdateUserAttributesInputBuilder? _input;
  _i2.GUpdateUserAttributesInputBuilder get input =>
      _$this._input ??= _i2.GUpdateUserAttributesInputBuilder();
  set input(_i2.GUpdateUserAttributesInputBuilder? input) =>
      _$this._input = input;

  GUpdateUserAttributesVarsBuilder();

  GUpdateUserAttributesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserAttributesVars other) {
    _$v = other as _$GUpdateUserAttributesVars;
  }

  @override
  void update(void Function(GUpdateUserAttributesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserAttributesVars build() => _build();

  _$GUpdateUserAttributesVars _build() {
    _$GUpdateUserAttributesVars _$result;
    try {
      _$result = _$v ?? _$GUpdateUserAttributesVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GUpdateUserAttributesVars',
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

class _$GDeleteUserVars extends GDeleteUserVars {
  @override
  final _i2.GDeleteUserInput input;

  factory _$GDeleteUserVars([void Function(GDeleteUserVarsBuilder)? updates]) =>
      (GDeleteUserVarsBuilder()..update(updates))._build();

  _$GDeleteUserVars._({required this.input}) : super._();
  @override
  GDeleteUserVars rebuild(void Function(GDeleteUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteUserVarsBuilder toBuilder() => GDeleteUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteUserVars && input == other.input;
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
      r'GDeleteUserVars',
    )..add('input', input)).toString();
  }
}

class GDeleteUserVarsBuilder
    implements Builder<GDeleteUserVars, GDeleteUserVarsBuilder> {
  _$GDeleteUserVars? _$v;

  _i2.GDeleteUserInputBuilder? _input;
  _i2.GDeleteUserInputBuilder get input =>
      _$this._input ??= _i2.GDeleteUserInputBuilder();
  set input(_i2.GDeleteUserInputBuilder? input) => _$this._input = input;

  GDeleteUserVarsBuilder();

  GDeleteUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteUserVars other) {
    _$v = other as _$GDeleteUserVars;
  }

  @override
  void update(void Function(GDeleteUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteUserVars build() => _build();

  _$GDeleteUserVars _build() {
    _$GDeleteUserVars _$result;
    try {
      _$result = _$v ?? _$GDeleteUserVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDeleteUserVars',
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
