// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCircleBoardsVars> _$gGetCircleBoardsVarsSerializer =
    _$GGetCircleBoardsVarsSerializer();
Serializer<GGetBoardPostsVars> _$gGetBoardPostsVarsSerializer =
    _$GGetBoardPostsVarsSerializer();
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

class _$GGetCircleBoardsVarsSerializer
    implements StructuredSerializer<GGetCircleBoardsVars> {
  @override
  final Iterable<Type> types = const [
    GGetCircleBoardsVars,
    _$GGetCircleBoardsVars,
  ];
  @override
  final String wireName = 'GGetCircleBoardsVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleBoardsVars object, {
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
  GGetCircleBoardsVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCircleBoardsVarsBuilder();

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

class _$GGetBoardPostsVarsSerializer
    implements StructuredSerializer<GGetBoardPostsVars> {
  @override
  final Iterable<Type> types = const [GGetBoardPostsVars, _$GGetBoardPostsVars];
  @override
  final String wireName = 'GGetBoardPostsVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetBoardPostsVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'boardId',
      serializers.serialize(
        object.boardId,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GGetBoardPostsVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetBoardPostsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'boardId':
          result.boardId =
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
        specifiedType: const FullType(_i2.GCreateBoardInput),
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
                  specifiedType: const FullType(_i2.GCreateBoardInput),
                )!
                as _i2.GCreateBoardInput,
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
        specifiedType: const FullType(_i2.GChangeBoardTopicInput),
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
                  specifiedType: const FullType(_i2.GChangeBoardTopicInput),
                )!
                as _i2.GChangeBoardTopicInput,
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
        specifiedType: const FullType(_i2.GChangeBoardStatusInput),
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
                  specifiedType: const FullType(_i2.GChangeBoardStatusInput),
                )!
                as _i2.GChangeBoardStatusInput,
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
        specifiedType: const FullType(_i2.GAddBoardPostInput),
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
                  specifiedType: const FullType(_i2.GAddBoardPostInput),
                )!
                as _i2.GAddBoardPostInput,
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
        specifiedType: const FullType(_i2.GDeleteBoardInput),
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
                  specifiedType: const FullType(_i2.GDeleteBoardInput),
                )!
                as _i2.GDeleteBoardInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCircleBoardsVars extends GGetCircleBoardsVars {
  @override
  final String circleId;

  factory _$GGetCircleBoardsVars([
    void Function(GGetCircleBoardsVarsBuilder)? updates,
  ]) => (GGetCircleBoardsVarsBuilder()..update(updates))._build();

  _$GGetCircleBoardsVars._({required this.circleId}) : super._();
  @override
  GGetCircleBoardsVars rebuild(
    void Function(GGetCircleBoardsVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCircleBoardsVarsBuilder toBuilder() =>
      GGetCircleBoardsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleBoardsVars && circleId == other.circleId;
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
      r'GGetCircleBoardsVars',
    )..add('circleId', circleId)).toString();
  }
}

class GGetCircleBoardsVarsBuilder
    implements Builder<GGetCircleBoardsVars, GGetCircleBoardsVarsBuilder> {
  _$GGetCircleBoardsVars? _$v;

  String? _circleId;
  String? get circleId => _$this._circleId;
  set circleId(String? circleId) => _$this._circleId = circleId;

  GGetCircleBoardsVarsBuilder();

  GGetCircleBoardsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circleId = $v.circleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleBoardsVars other) {
    _$v = other as _$GGetCircleBoardsVars;
  }

  @override
  void update(void Function(GGetCircleBoardsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleBoardsVars build() => _build();

  _$GGetCircleBoardsVars _build() {
    final _$result =
        _$v ??
        _$GGetCircleBoardsVars._(
          circleId: BuiltValueNullFieldError.checkNotNull(
            circleId,
            r'GGetCircleBoardsVars',
            'circleId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetBoardPostsVars extends GGetBoardPostsVars {
  @override
  final String boardId;

  factory _$GGetBoardPostsVars([
    void Function(GGetBoardPostsVarsBuilder)? updates,
  ]) => (GGetBoardPostsVarsBuilder()..update(updates))._build();

  _$GGetBoardPostsVars._({required this.boardId}) : super._();
  @override
  GGetBoardPostsVars rebuild(
    void Function(GGetBoardPostsVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetBoardPostsVarsBuilder toBuilder() =>
      GGetBoardPostsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetBoardPostsVars && boardId == other.boardId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, boardId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GGetBoardPostsVars',
    )..add('boardId', boardId)).toString();
  }
}

class GGetBoardPostsVarsBuilder
    implements Builder<GGetBoardPostsVars, GGetBoardPostsVarsBuilder> {
  _$GGetBoardPostsVars? _$v;

  String? _boardId;
  String? get boardId => _$this._boardId;
  set boardId(String? boardId) => _$this._boardId = boardId;

  GGetBoardPostsVarsBuilder();

  GGetBoardPostsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _boardId = $v.boardId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetBoardPostsVars other) {
    _$v = other as _$GGetBoardPostsVars;
  }

  @override
  void update(void Function(GGetBoardPostsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetBoardPostsVars build() => _build();

  _$GGetBoardPostsVars _build() {
    final _$result =
        _$v ??
        _$GGetBoardPostsVars._(
          boardId: BuiltValueNullFieldError.checkNotNull(
            boardId,
            r'GGetBoardPostsVars',
            'boardId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCreateBoardVars extends GCreateBoardVars {
  @override
  final _i2.GCreateBoardInput input;

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

  _i2.GCreateBoardInputBuilder? _input;
  _i2.GCreateBoardInputBuilder get input =>
      _$this._input ??= _i2.GCreateBoardInputBuilder();
  set input(_i2.GCreateBoardInputBuilder? input) => _$this._input = input;

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
  final _i2.GChangeBoardTopicInput input;

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

  _i2.GChangeBoardTopicInputBuilder? _input;
  _i2.GChangeBoardTopicInputBuilder get input =>
      _$this._input ??= _i2.GChangeBoardTopicInputBuilder();
  set input(_i2.GChangeBoardTopicInputBuilder? input) => _$this._input = input;

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
  final _i2.GChangeBoardStatusInput input;

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

  _i2.GChangeBoardStatusInputBuilder? _input;
  _i2.GChangeBoardStatusInputBuilder get input =>
      _$this._input ??= _i2.GChangeBoardStatusInputBuilder();
  set input(_i2.GChangeBoardStatusInputBuilder? input) => _$this._input = input;

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
  final _i2.GAddBoardPostInput input;

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

  _i2.GAddBoardPostInputBuilder? _input;
  _i2.GAddBoardPostInputBuilder get input =>
      _$this._input ??= _i2.GAddBoardPostInputBuilder();
  set input(_i2.GAddBoardPostInputBuilder? input) => _$this._input = input;

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
  final _i2.GDeleteBoardInput input;

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

  _i2.GDeleteBoardInputBuilder? _input;
  _i2.GDeleteBoardInputBuilder get input =>
      _$this._input ??= _i2.GDeleteBoardInputBuilder();
  set input(_i2.GDeleteBoardInputBuilder? input) => _$this._input = input;

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
