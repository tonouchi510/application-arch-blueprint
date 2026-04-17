// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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
        specifiedType: const FullType(_i1.GCreateCircleInput),
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
                  specifiedType: const FullType(_i1.GCreateCircleInput),
                )!
                as _i1.GCreateCircleInput,
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
        specifiedType: const FullType(_i1.GAddCircleMemberInput),
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
                  specifiedType: const FullType(_i1.GAddCircleMemberInput),
                )!
                as _i1.GAddCircleMemberInput,
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
        specifiedType: const FullType(_i1.GChangeCircleNameInput),
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
                  specifiedType: const FullType(_i1.GChangeCircleNameInput),
                )!
                as _i1.GChangeCircleNameInput,
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
        specifiedType: const FullType(_i1.GChangeCircleDescriptionInput),
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
                    _i1.GChangeCircleDescriptionInput,
                  ),
                )!
                as _i1.GChangeCircleDescriptionInput,
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
        specifiedType: const FullType(_i1.GDelegateCircleOwnerInput),
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
                  specifiedType: const FullType(_i1.GDelegateCircleOwnerInput),
                )!
                as _i1.GDelegateCircleOwnerInput,
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
        specifiedType: const FullType(_i1.GDeleteCircleInput),
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
                  specifiedType: const FullType(_i1.GDeleteCircleInput),
                )!
                as _i1.GDeleteCircleInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCircleVars extends GCreateCircleVars {
  @override
  final _i1.GCreateCircleInput input;

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

  _i1.GCreateCircleInputBuilder? _input;
  _i1.GCreateCircleInputBuilder get input =>
      _$this._input ??= _i1.GCreateCircleInputBuilder();
  set input(_i1.GCreateCircleInputBuilder? input) => _$this._input = input;

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
  final _i1.GAddCircleMemberInput input;

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

  _i1.GAddCircleMemberInputBuilder? _input;
  _i1.GAddCircleMemberInputBuilder get input =>
      _$this._input ??= _i1.GAddCircleMemberInputBuilder();
  set input(_i1.GAddCircleMemberInputBuilder? input) => _$this._input = input;

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
  final _i1.GChangeCircleNameInput input;

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

  _i1.GChangeCircleNameInputBuilder? _input;
  _i1.GChangeCircleNameInputBuilder get input =>
      _$this._input ??= _i1.GChangeCircleNameInputBuilder();
  set input(_i1.GChangeCircleNameInputBuilder? input) => _$this._input = input;

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
  final _i1.GChangeCircleDescriptionInput input;

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

  _i1.GChangeCircleDescriptionInputBuilder? _input;
  _i1.GChangeCircleDescriptionInputBuilder get input =>
      _$this._input ??= _i1.GChangeCircleDescriptionInputBuilder();
  set input(_i1.GChangeCircleDescriptionInputBuilder? input) =>
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
  final _i1.GDelegateCircleOwnerInput input;

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

  _i1.GDelegateCircleOwnerInputBuilder? _input;
  _i1.GDelegateCircleOwnerInputBuilder get input =>
      _$this._input ??= _i1.GDelegateCircleOwnerInputBuilder();
  set input(_i1.GDelegateCircleOwnerInputBuilder? input) =>
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
  final _i1.GDeleteCircleInput input;

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

  _i1.GDeleteCircleInputBuilder? _input;
  _i1.GDeleteCircleInputBuilder get input =>
      _$this._input ??= _i1.GDeleteCircleInputBuilder();
  set input(_i1.GDeleteCircleInputBuilder? input) => _$this._input = input;

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
