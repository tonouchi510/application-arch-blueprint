// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateBoardVars> _$gCreateBoardVarsSerializer =
    _$GCreateBoardVarsSerializer();
Serializer<GChangeBoardTopicVars> _$gChangeBoardTopicVarsSerializer =
    _$GChangeBoardTopicVarsSerializer();
Serializer<GChangeBoardStatusVars> _$gChangeBoardStatusVarsSerializer =
    _$GChangeBoardStatusVarsSerializer();
Serializer<GAddBoardPostVars> _$gAddBoardPostVarsSerializer =
    _$GAddBoardPostVarsSerializer();
Serializer<GDeleteBoardVars> _$gDeleteBoardVarsSerializer =
    _$GDeleteBoardVarsSerializer();

class _$GCreateBoardVarsSerializer
    implements StructuredSerializer<GCreateBoardVars> {
  @override
  final Iterable<Type> types = const [GCreateBoardVars, _$GCreateBoardVars];
  @override
  final String wireName = 'GCreateBoardVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateBoardVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i1.GCreateBoardInput),
      ),
    ];

    return result;
  }

  @override
  GCreateBoardVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateBoardVarsBuilder();

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
                  specifiedType: const FullType(_i1.GCreateBoardInput),
                )!
                as _i1.GCreateBoardInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeBoardTopicVarsSerializer
    implements StructuredSerializer<GChangeBoardTopicVars> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardTopicVars,
    _$GChangeBoardTopicVars,
  ];
  @override
  final String wireName = 'GChangeBoardTopicVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardTopicVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i1.GChangeBoardTopicInput),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardTopicVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardTopicVarsBuilder();

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
                  specifiedType: const FullType(_i1.GChangeBoardTopicInput),
                )!
                as _i1.GChangeBoardTopicInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeBoardStatusVarsSerializer
    implements StructuredSerializer<GChangeBoardStatusVars> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardStatusVars,
    _$GChangeBoardStatusVars,
  ];
  @override
  final String wireName = 'GChangeBoardStatusVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardStatusVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i1.GChangeBoardStatusInput),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardStatusVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardStatusVarsBuilder();

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
                  specifiedType: const FullType(_i1.GChangeBoardStatusInput),
                )!
                as _i1.GChangeBoardStatusInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAddBoardPostVarsSerializer
    implements StructuredSerializer<GAddBoardPostVars> {
  @override
  final Iterable<Type> types = const [GAddBoardPostVars, _$GAddBoardPostVars];
  @override
  final String wireName = 'GAddBoardPostVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddBoardPostVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i1.GAddBoardPostInput),
      ),
    ];

    return result;
  }

  @override
  GAddBoardPostVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddBoardPostVarsBuilder();

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
                  specifiedType: const FullType(_i1.GAddBoardPostInput),
                )!
                as _i1.GAddBoardPostInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteBoardVarsSerializer
    implements StructuredSerializer<GDeleteBoardVars> {
  @override
  final Iterable<Type> types = const [GDeleteBoardVars, _$GDeleteBoardVars];
  @override
  final String wireName = 'GDeleteBoardVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteBoardVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'input',
      serializers.serialize(
        object.input,
        specifiedType: const FullType(_i1.GDeleteBoardInput),
      ),
    ];

    return result;
  }

  @override
  GDeleteBoardVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteBoardVarsBuilder();

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
                  specifiedType: const FullType(_i1.GDeleteBoardInput),
                )!
                as _i1.GDeleteBoardInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBoardVars extends GCreateBoardVars {
  @override
  final _i1.GCreateBoardInput input;

  factory _$GCreateBoardVars([
    void Function(GCreateBoardVarsBuilder)? updates,
  ]) => (GCreateBoardVarsBuilder()..update(updates))._build();

  _$GCreateBoardVars._({required this.input}) : super._();
  @override
  GCreateBoardVars rebuild(void Function(GCreateBoardVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBoardVarsBuilder toBuilder() =>
      GCreateBoardVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBoardVars && input == other.input;
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
      r'GCreateBoardVars',
    )..add('input', input)).toString();
  }
}

class GCreateBoardVarsBuilder
    implements Builder<GCreateBoardVars, GCreateBoardVarsBuilder> {
  _$GCreateBoardVars? _$v;

  _i1.GCreateBoardInputBuilder? _input;
  _i1.GCreateBoardInputBuilder get input =>
      _$this._input ??= _i1.GCreateBoardInputBuilder();
  set input(_i1.GCreateBoardInputBuilder? input) => _$this._input = input;

  GCreateBoardVarsBuilder();

  GCreateBoardVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBoardVars other) {
    _$v = other as _$GCreateBoardVars;
  }

  @override
  void update(void Function(GCreateBoardVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBoardVars build() => _build();

  _$GCreateBoardVars _build() {
    _$GCreateBoardVars _$result;
    try {
      _$result = _$v ?? _$GCreateBoardVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GCreateBoardVars',
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

class _$GChangeBoardTopicVars extends GChangeBoardTopicVars {
  @override
  final _i1.GChangeBoardTopicInput input;

  factory _$GChangeBoardTopicVars([
    void Function(GChangeBoardTopicVarsBuilder)? updates,
  ]) => (GChangeBoardTopicVarsBuilder()..update(updates))._build();

  _$GChangeBoardTopicVars._({required this.input}) : super._();
  @override
  GChangeBoardTopicVars rebuild(
    void Function(GChangeBoardTopicVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardTopicVarsBuilder toBuilder() =>
      GChangeBoardTopicVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardTopicVars && input == other.input;
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
      r'GChangeBoardTopicVars',
    )..add('input', input)).toString();
  }
}

class GChangeBoardTopicVarsBuilder
    implements Builder<GChangeBoardTopicVars, GChangeBoardTopicVarsBuilder> {
  _$GChangeBoardTopicVars? _$v;

  _i1.GChangeBoardTopicInputBuilder? _input;
  _i1.GChangeBoardTopicInputBuilder get input =>
      _$this._input ??= _i1.GChangeBoardTopicInputBuilder();
  set input(_i1.GChangeBoardTopicInputBuilder? input) => _$this._input = input;

  GChangeBoardTopicVarsBuilder();

  GChangeBoardTopicVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardTopicVars other) {
    _$v = other as _$GChangeBoardTopicVars;
  }

  @override
  void update(void Function(GChangeBoardTopicVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardTopicVars build() => _build();

  _$GChangeBoardTopicVars _build() {
    _$GChangeBoardTopicVars _$result;
    try {
      _$result = _$v ?? _$GChangeBoardTopicVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeBoardTopicVars',
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

class _$GChangeBoardStatusVars extends GChangeBoardStatusVars {
  @override
  final _i1.GChangeBoardStatusInput input;

  factory _$GChangeBoardStatusVars([
    void Function(GChangeBoardStatusVarsBuilder)? updates,
  ]) => (GChangeBoardStatusVarsBuilder()..update(updates))._build();

  _$GChangeBoardStatusVars._({required this.input}) : super._();
  @override
  GChangeBoardStatusVars rebuild(
    void Function(GChangeBoardStatusVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardStatusVarsBuilder toBuilder() =>
      GChangeBoardStatusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardStatusVars && input == other.input;
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
      r'GChangeBoardStatusVars',
    )..add('input', input)).toString();
  }
}

class GChangeBoardStatusVarsBuilder
    implements Builder<GChangeBoardStatusVars, GChangeBoardStatusVarsBuilder> {
  _$GChangeBoardStatusVars? _$v;

  _i1.GChangeBoardStatusInputBuilder? _input;
  _i1.GChangeBoardStatusInputBuilder get input =>
      _$this._input ??= _i1.GChangeBoardStatusInputBuilder();
  set input(_i1.GChangeBoardStatusInputBuilder? input) => _$this._input = input;

  GChangeBoardStatusVarsBuilder();

  GChangeBoardStatusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardStatusVars other) {
    _$v = other as _$GChangeBoardStatusVars;
  }

  @override
  void update(void Function(GChangeBoardStatusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardStatusVars build() => _build();

  _$GChangeBoardStatusVars _build() {
    _$GChangeBoardStatusVars _$result;
    try {
      _$result = _$v ?? _$GChangeBoardStatusVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeBoardStatusVars',
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

class _$GAddBoardPostVars extends GAddBoardPostVars {
  @override
  final _i1.GAddBoardPostInput input;

  factory _$GAddBoardPostVars([
    void Function(GAddBoardPostVarsBuilder)? updates,
  ]) => (GAddBoardPostVarsBuilder()..update(updates))._build();

  _$GAddBoardPostVars._({required this.input}) : super._();
  @override
  GAddBoardPostVars rebuild(void Function(GAddBoardPostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddBoardPostVarsBuilder toBuilder() =>
      GAddBoardPostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddBoardPostVars && input == other.input;
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
      r'GAddBoardPostVars',
    )..add('input', input)).toString();
  }
}

class GAddBoardPostVarsBuilder
    implements Builder<GAddBoardPostVars, GAddBoardPostVarsBuilder> {
  _$GAddBoardPostVars? _$v;

  _i1.GAddBoardPostInputBuilder? _input;
  _i1.GAddBoardPostInputBuilder get input =>
      _$this._input ??= _i1.GAddBoardPostInputBuilder();
  set input(_i1.GAddBoardPostInputBuilder? input) => _$this._input = input;

  GAddBoardPostVarsBuilder();

  GAddBoardPostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddBoardPostVars other) {
    _$v = other as _$GAddBoardPostVars;
  }

  @override
  void update(void Function(GAddBoardPostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddBoardPostVars build() => _build();

  _$GAddBoardPostVars _build() {
    _$GAddBoardPostVars _$result;
    try {
      _$result = _$v ?? _$GAddBoardPostVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAddBoardPostVars',
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

class _$GDeleteBoardVars extends GDeleteBoardVars {
  @override
  final _i1.GDeleteBoardInput input;

  factory _$GDeleteBoardVars([
    void Function(GDeleteBoardVarsBuilder)? updates,
  ]) => (GDeleteBoardVarsBuilder()..update(updates))._build();

  _$GDeleteBoardVars._({required this.input}) : super._();
  @override
  GDeleteBoardVars rebuild(void Function(GDeleteBoardVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteBoardVarsBuilder toBuilder() =>
      GDeleteBoardVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteBoardVars && input == other.input;
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
      r'GDeleteBoardVars',
    )..add('input', input)).toString();
  }
}

class GDeleteBoardVarsBuilder
    implements Builder<GDeleteBoardVars, GDeleteBoardVarsBuilder> {
  _$GDeleteBoardVars? _$v;

  _i1.GDeleteBoardInputBuilder? _input;
  _i1.GDeleteBoardInputBuilder get input =>
      _$this._input ??= _i1.GDeleteBoardInputBuilder();
  set input(_i1.GDeleteBoardInputBuilder? input) => _$this._input = input;

  GDeleteBoardVarsBuilder();

  GDeleteBoardVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteBoardVars other) {
    _$v = other as _$GDeleteBoardVars;
  }

  @override
  void update(void Function(GDeleteBoardVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteBoardVars build() => _build();

  _$GDeleteBoardVars _build() {
    _$GDeleteBoardVars _$result;
    try {
      _$result = _$v ?? _$GDeleteBoardVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDeleteBoardVars',
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
