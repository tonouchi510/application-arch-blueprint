// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChangeBoardCreationPermissionVars>
_$gChangeBoardCreationPermissionVarsSerializer =
    _$GChangeBoardCreationPermissionVarsSerializer();

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
        specifiedType: const FullType(_i1.GChangeBoardCreationPermissionInput),
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
                    _i1.GChangeBoardCreationPermissionInput,
                  ),
                )!
                as _i1.GChangeBoardCreationPermissionInput,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeBoardCreationPermissionVars
    extends GChangeBoardCreationPermissionVars {
  @override
  final _i1.GChangeBoardCreationPermissionInput input;

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

  _i1.GChangeBoardCreationPermissionInputBuilder? _input;
  _i1.GChangeBoardCreationPermissionInputBuilder get input =>
      _$this._input ??= _i1.GChangeBoardCreationPermissionInputBuilder();
  set input(_i1.GChangeBoardCreationPermissionInputBuilder? input) =>
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
