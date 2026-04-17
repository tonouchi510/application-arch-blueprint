// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateUserAttributesVars> _$gUpdateUserAttributesVarsSerializer =
    _$GUpdateUserAttributesVarsSerializer();
Serializer<GDeleteUserVars> _$gDeleteUserVarsSerializer =
    _$GDeleteUserVarsSerializer();

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
        specifiedType: const FullType(_i1.GUpdateUserAttributesInput),
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
                  specifiedType: const FullType(_i1.GUpdateUserAttributesInput),
                )!
                as _i1.GUpdateUserAttributesInput,
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
        specifiedType: const FullType(_i1.GDeleteUserInput),
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
                  specifiedType: const FullType(_i1.GDeleteUserInput),
                )!
                as _i1.GDeleteUserInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserAttributesVars extends GUpdateUserAttributesVars {
  @override
  final _i1.GUpdateUserAttributesInput input;

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

  _i1.GUpdateUserAttributesInputBuilder? _input;
  _i1.GUpdateUserAttributesInputBuilder get input =>
      _$this._input ??= _i1.GUpdateUserAttributesInputBuilder();
  set input(_i1.GUpdateUserAttributesInputBuilder? input) =>
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
  final _i1.GDeleteUserInput input;

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

  _i1.GDeleteUserInputBuilder? _input;
  _i1.GDeleteUserInputBuilder get input =>
      _$this._input ??= _i1.GDeleteUserInputBuilder();
  set input(_i1.GDeleteUserInputBuilder? input) => _$this._input = input;

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
