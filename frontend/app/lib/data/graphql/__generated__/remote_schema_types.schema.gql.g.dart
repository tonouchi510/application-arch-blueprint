// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_schema_types.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddBoardPostInput> _$gAddBoardPostInputSerializer =
    _$GAddBoardPostInputSerializer();
Serializer<GAddCircleMemberInput> _$gAddCircleMemberInputSerializer =
    _$GAddCircleMemberInputSerializer();
Serializer<GChangeBoardCreationPermissionInput>
_$gChangeBoardCreationPermissionInputSerializer =
    _$GChangeBoardCreationPermissionInputSerializer();
Serializer<GChangeBoardStatusInput> _$gChangeBoardStatusInputSerializer =
    _$GChangeBoardStatusInputSerializer();
Serializer<GChangeBoardTopicInput> _$gChangeBoardTopicInputSerializer =
    _$GChangeBoardTopicInputSerializer();
Serializer<GChangeCircleDescriptionInput>
_$gChangeCircleDescriptionInputSerializer =
    _$GChangeCircleDescriptionInputSerializer();
Serializer<GChangeCircleNameInput> _$gChangeCircleNameInputSerializer =
    _$GChangeCircleNameInputSerializer();
Serializer<GCreateBoardInput> _$gCreateBoardInputSerializer =
    _$GCreateBoardInputSerializer();
Serializer<GCreateCircleInput> _$gCreateCircleInputSerializer =
    _$GCreateCircleInputSerializer();
Serializer<GDelegateCircleOwnerInput> _$gDelegateCircleOwnerInputSerializer =
    _$GDelegateCircleOwnerInputSerializer();
Serializer<GDeleteBoardInput> _$gDeleteBoardInputSerializer =
    _$GDeleteBoardInputSerializer();
Serializer<GDeleteCircleInput> _$gDeleteCircleInputSerializer =
    _$GDeleteCircleInputSerializer();

class _$GAddBoardPostInputSerializer
    implements StructuredSerializer<GAddBoardPostInput> {
  @override
  final Iterable<Type> types = const [GAddBoardPostInput, _$GAddBoardPostInput];
  @override
  final String wireName = 'GAddBoardPostInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddBoardPostInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'board_id',
      serializers.serialize(
        object.board_id,
        specifiedType: const FullType(String),
      ),
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'content',
      serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      ),
      'user_id',
      serializers.serialize(
        object.user_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GAddBoardPostInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddBoardPostInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'board_id':
          result.board_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'content':
          result.content =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'user_id':
          result.user_id =
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

class _$GAddCircleMemberInputSerializer
    implements StructuredSerializer<GAddCircleMemberInput> {
  @override
  final Iterable<Type> types = const [
    GAddCircleMemberInput,
    _$GAddCircleMemberInput,
  ];
  @override
  final String wireName = 'GAddCircleMemberInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddCircleMemberInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'new_member_id',
      serializers.serialize(
        object.new_member_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GAddCircleMemberInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddCircleMemberInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'new_member_id':
          result.new_member_id =
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

class _$GChangeBoardCreationPermissionInputSerializer
    implements StructuredSerializer<GChangeBoardCreationPermissionInput> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardCreationPermissionInput,
    _$GChangeBoardCreationPermissionInput,
  ];
  @override
  final String wireName = 'GChangeBoardCreationPermissionInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardCreationPermissionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'allowed',
      serializers.serialize(
        object.allowed,
        specifiedType: const FullType(bool),
      ),
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardCreationPermissionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardCreationPermissionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'allowed':
          result.allowed =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
        case 'circle_id':
          result.circle_id =
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

class _$GChangeBoardStatusInputSerializer
    implements StructuredSerializer<GChangeBoardStatusInput> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardStatusInput,
    _$GChangeBoardStatusInput,
  ];
  @override
  final String wireName = 'GChangeBoardStatusInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardStatusInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'board_id',
      serializers.serialize(
        object.board_id,
        specifiedType: const FullType(String),
      ),
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'new_status',
      serializers.serialize(
        object.new_status,
        specifiedType: const FullType(int),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardStatusInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardStatusInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'board_id':
          result.board_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'new_status':
          result.new_status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeBoardTopicInputSerializer
    implements StructuredSerializer<GChangeBoardTopicInput> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardTopicInput,
    _$GChangeBoardTopicInput,
  ];
  @override
  final String wireName = 'GChangeBoardTopicInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardTopicInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'board_id',
      serializers.serialize(
        object.board_id,
        specifiedType: const FullType(String),
      ),
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'new_topic',
      serializers.serialize(
        object.new_topic,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardTopicInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardTopicInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'board_id':
          result.board_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'new_topic':
          result.new_topic =
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

class _$GChangeCircleDescriptionInputSerializer
    implements StructuredSerializer<GChangeCircleDescriptionInput> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleDescriptionInput,
    _$GChangeCircleDescriptionInput,
  ];
  @override
  final String wireName = 'GChangeCircleDescriptionInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleDescriptionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'new_description',
      serializers.serialize(
        object.new_description,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleDescriptionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleDescriptionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'new_description':
          result.new_description =
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

class _$GChangeCircleNameInputSerializer
    implements StructuredSerializer<GChangeCircleNameInput> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleNameInput,
    _$GChangeCircleNameInput,
  ];
  @override
  final String wireName = 'GChangeCircleNameInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleNameInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'new_name',
      serializers.serialize(
        object.new_name,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleNameInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleNameInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'new_name':
          result.new_name =
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

class _$GCreateBoardInputSerializer
    implements StructuredSerializer<GCreateBoardInput> {
  @override
  final Iterable<Type> types = const [GCreateBoardInput, _$GCreateBoardInput];
  @override
  final String wireName = 'GCreateBoardInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateBoardInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'topic',
      serializers.serialize(
        object.topic,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GCreateBoardInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateBoardInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'topic':
          result.topic =
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

class _$GCreateCircleInputSerializer
    implements StructuredSerializer<GCreateCircleInput> {
  @override
  final Iterable<Type> types = const [GCreateCircleInput, _$GCreateCircleInput];
  @override
  final String wireName = 'GCreateCircleInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateCircleInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateCircleInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateCircleInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'name':
          result.name =
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

class _$GDelegateCircleOwnerInputSerializer
    implements StructuredSerializer<GDelegateCircleOwnerInput> {
  @override
  final Iterable<Type> types = const [
    GDelegateCircleOwnerInput,
    _$GDelegateCircleOwnerInput,
  ];
  @override
  final String wireName = 'GDelegateCircleOwnerInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDelegateCircleOwnerInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
      'new_owner_id',
      serializers.serialize(
        object.new_owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GDelegateCircleOwnerInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDelegateCircleOwnerInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circle_id':
          result.circle_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'new_owner_id':
          result.new_owner_id =
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

class _$GDeleteBoardInputSerializer
    implements StructuredSerializer<GDeleteBoardInput> {
  @override
  final Iterable<Type> types = const [GDeleteBoardInput, _$GDeleteBoardInput];
  @override
  final String wireName = 'GDeleteBoardInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteBoardInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'board_id',
      serializers.serialize(
        object.board_id,
        specifiedType: const FullType(String),
      ),
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GDeleteBoardInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteBoardInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'board_id':
          result.board_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_id':
          result.circle_id =
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

class _$GDeleteCircleInputSerializer
    implements StructuredSerializer<GDeleteCircleInput> {
  @override
  final Iterable<Type> types = const [GDeleteCircleInput, _$GDeleteCircleInput];
  @override
  final String wireName = 'GDeleteCircleInput';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteCircleInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'circle_id',
      serializers.serialize(
        object.circle_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GDeleteCircleInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteCircleInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'circle_id':
          result.circle_id =
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

class _$GAddBoardPostInput extends GAddBoardPostInput {
  @override
  final String board_id;
  @override
  final String circle_id;
  @override
  final String content;
  @override
  final String user_id;

  factory _$GAddBoardPostInput([
    void Function(GAddBoardPostInputBuilder)? updates,
  ]) => (GAddBoardPostInputBuilder()..update(updates))._build();

  _$GAddBoardPostInput._({
    required this.board_id,
    required this.circle_id,
    required this.content,
    required this.user_id,
  }) : super._();
  @override
  GAddBoardPostInput rebuild(
    void Function(GAddBoardPostInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAddBoardPostInputBuilder toBuilder() =>
      GAddBoardPostInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddBoardPostInput &&
        board_id == other.board_id &&
        circle_id == other.circle_id &&
        content == other.content &&
        user_id == other.user_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, board_id.hashCode);
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, user_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddBoardPostInput')
          ..add('board_id', board_id)
          ..add('circle_id', circle_id)
          ..add('content', content)
          ..add('user_id', user_id))
        .toString();
  }
}

class GAddBoardPostInputBuilder
    implements Builder<GAddBoardPostInput, GAddBoardPostInputBuilder> {
  _$GAddBoardPostInput? _$v;

  String? _board_id;
  String? get board_id => _$this._board_id;
  set board_id(String? board_id) => _$this._board_id = board_id;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _user_id;
  String? get user_id => _$this._user_id;
  set user_id(String? user_id) => _$this._user_id = user_id;

  GAddBoardPostInputBuilder();

  GAddBoardPostInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _board_id = $v.board_id;
      _circle_id = $v.circle_id;
      _content = $v.content;
      _user_id = $v.user_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddBoardPostInput other) {
    _$v = other as _$GAddBoardPostInput;
  }

  @override
  void update(void Function(GAddBoardPostInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddBoardPostInput build() => _build();

  _$GAddBoardPostInput _build() {
    final _$result =
        _$v ??
        _$GAddBoardPostInput._(
          board_id: BuiltValueNullFieldError.checkNotNull(
            board_id,
            r'GAddBoardPostInput',
            'board_id',
          ),
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GAddBoardPostInput',
            'circle_id',
          ),
          content: BuiltValueNullFieldError.checkNotNull(
            content,
            r'GAddBoardPostInput',
            'content',
          ),
          user_id: BuiltValueNullFieldError.checkNotNull(
            user_id,
            r'GAddBoardPostInput',
            'user_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAddCircleMemberInput extends GAddCircleMemberInput {
  @override
  final String circle_id;
  @override
  final String new_member_id;

  factory _$GAddCircleMemberInput([
    void Function(GAddCircleMemberInputBuilder)? updates,
  ]) => (GAddCircleMemberInputBuilder()..update(updates))._build();

  _$GAddCircleMemberInput._({
    required this.circle_id,
    required this.new_member_id,
  }) : super._();
  @override
  GAddCircleMemberInput rebuild(
    void Function(GAddCircleMemberInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAddCircleMemberInputBuilder toBuilder() =>
      GAddCircleMemberInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddCircleMemberInput &&
        circle_id == other.circle_id &&
        new_member_id == other.new_member_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, new_member_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddCircleMemberInput')
          ..add('circle_id', circle_id)
          ..add('new_member_id', new_member_id))
        .toString();
  }
}

class GAddCircleMemberInputBuilder
    implements Builder<GAddCircleMemberInput, GAddCircleMemberInputBuilder> {
  _$GAddCircleMemberInput? _$v;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  String? _new_member_id;
  String? get new_member_id => _$this._new_member_id;
  set new_member_id(String? new_member_id) =>
      _$this._new_member_id = new_member_id;

  GAddCircleMemberInputBuilder();

  GAddCircleMemberInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circle_id = $v.circle_id;
      _new_member_id = $v.new_member_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddCircleMemberInput other) {
    _$v = other as _$GAddCircleMemberInput;
  }

  @override
  void update(void Function(GAddCircleMemberInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddCircleMemberInput build() => _build();

  _$GAddCircleMemberInput _build() {
    final _$result =
        _$v ??
        _$GAddCircleMemberInput._(
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GAddCircleMemberInput',
            'circle_id',
          ),
          new_member_id: BuiltValueNullFieldError.checkNotNull(
            new_member_id,
            r'GAddCircleMemberInput',
            'new_member_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeBoardCreationPermissionInput
    extends GChangeBoardCreationPermissionInput {
  @override
  final bool allowed;
  @override
  final String circle_id;

  factory _$GChangeBoardCreationPermissionInput([
    void Function(GChangeBoardCreationPermissionInputBuilder)? updates,
  ]) =>
      (GChangeBoardCreationPermissionInputBuilder()..update(updates))._build();

  _$GChangeBoardCreationPermissionInput._({
    required this.allowed,
    required this.circle_id,
  }) : super._();
  @override
  GChangeBoardCreationPermissionInput rebuild(
    void Function(GChangeBoardCreationPermissionInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardCreationPermissionInputBuilder toBuilder() =>
      GChangeBoardCreationPermissionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardCreationPermissionInput &&
        allowed == other.allowed &&
        circle_id == other.circle_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowed.hashCode);
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeBoardCreationPermissionInput')
          ..add('allowed', allowed)
          ..add('circle_id', circle_id))
        .toString();
  }
}

class GChangeBoardCreationPermissionInputBuilder
    implements
        Builder<
          GChangeBoardCreationPermissionInput,
          GChangeBoardCreationPermissionInputBuilder
        > {
  _$GChangeBoardCreationPermissionInput? _$v;

  bool? _allowed;
  bool? get allowed => _$this._allowed;
  set allowed(bool? allowed) => _$this._allowed = allowed;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  GChangeBoardCreationPermissionInputBuilder();

  GChangeBoardCreationPermissionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowed = $v.allowed;
      _circle_id = $v.circle_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardCreationPermissionInput other) {
    _$v = other as _$GChangeBoardCreationPermissionInput;
  }

  @override
  void update(
    void Function(GChangeBoardCreationPermissionInputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardCreationPermissionInput build() => _build();

  _$GChangeBoardCreationPermissionInput _build() {
    final _$result =
        _$v ??
        _$GChangeBoardCreationPermissionInput._(
          allowed: BuiltValueNullFieldError.checkNotNull(
            allowed,
            r'GChangeBoardCreationPermissionInput',
            'allowed',
          ),
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GChangeBoardCreationPermissionInput',
            'circle_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeBoardStatusInput extends GChangeBoardStatusInput {
  @override
  final String board_id;
  @override
  final String circle_id;
  @override
  final int new_status;

  factory _$GChangeBoardStatusInput([
    void Function(GChangeBoardStatusInputBuilder)? updates,
  ]) => (GChangeBoardStatusInputBuilder()..update(updates))._build();

  _$GChangeBoardStatusInput._({
    required this.board_id,
    required this.circle_id,
    required this.new_status,
  }) : super._();
  @override
  GChangeBoardStatusInput rebuild(
    void Function(GChangeBoardStatusInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardStatusInputBuilder toBuilder() =>
      GChangeBoardStatusInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardStatusInput &&
        board_id == other.board_id &&
        circle_id == other.circle_id &&
        new_status == other.new_status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, board_id.hashCode);
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, new_status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeBoardStatusInput')
          ..add('board_id', board_id)
          ..add('circle_id', circle_id)
          ..add('new_status', new_status))
        .toString();
  }
}

class GChangeBoardStatusInputBuilder
    implements
        Builder<GChangeBoardStatusInput, GChangeBoardStatusInputBuilder> {
  _$GChangeBoardStatusInput? _$v;

  String? _board_id;
  String? get board_id => _$this._board_id;
  set board_id(String? board_id) => _$this._board_id = board_id;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  int? _new_status;
  int? get new_status => _$this._new_status;
  set new_status(int? new_status) => _$this._new_status = new_status;

  GChangeBoardStatusInputBuilder();

  GChangeBoardStatusInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _board_id = $v.board_id;
      _circle_id = $v.circle_id;
      _new_status = $v.new_status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardStatusInput other) {
    _$v = other as _$GChangeBoardStatusInput;
  }

  @override
  void update(void Function(GChangeBoardStatusInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardStatusInput build() => _build();

  _$GChangeBoardStatusInput _build() {
    final _$result =
        _$v ??
        _$GChangeBoardStatusInput._(
          board_id: BuiltValueNullFieldError.checkNotNull(
            board_id,
            r'GChangeBoardStatusInput',
            'board_id',
          ),
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GChangeBoardStatusInput',
            'circle_id',
          ),
          new_status: BuiltValueNullFieldError.checkNotNull(
            new_status,
            r'GChangeBoardStatusInput',
            'new_status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeBoardTopicInput extends GChangeBoardTopicInput {
  @override
  final String board_id;
  @override
  final String circle_id;
  @override
  final String new_topic;

  factory _$GChangeBoardTopicInput([
    void Function(GChangeBoardTopicInputBuilder)? updates,
  ]) => (GChangeBoardTopicInputBuilder()..update(updates))._build();

  _$GChangeBoardTopicInput._({
    required this.board_id,
    required this.circle_id,
    required this.new_topic,
  }) : super._();
  @override
  GChangeBoardTopicInput rebuild(
    void Function(GChangeBoardTopicInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardTopicInputBuilder toBuilder() =>
      GChangeBoardTopicInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardTopicInput &&
        board_id == other.board_id &&
        circle_id == other.circle_id &&
        new_topic == other.new_topic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, board_id.hashCode);
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, new_topic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeBoardTopicInput')
          ..add('board_id', board_id)
          ..add('circle_id', circle_id)
          ..add('new_topic', new_topic))
        .toString();
  }
}

class GChangeBoardTopicInputBuilder
    implements Builder<GChangeBoardTopicInput, GChangeBoardTopicInputBuilder> {
  _$GChangeBoardTopicInput? _$v;

  String? _board_id;
  String? get board_id => _$this._board_id;
  set board_id(String? board_id) => _$this._board_id = board_id;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  String? _new_topic;
  String? get new_topic => _$this._new_topic;
  set new_topic(String? new_topic) => _$this._new_topic = new_topic;

  GChangeBoardTopicInputBuilder();

  GChangeBoardTopicInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _board_id = $v.board_id;
      _circle_id = $v.circle_id;
      _new_topic = $v.new_topic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardTopicInput other) {
    _$v = other as _$GChangeBoardTopicInput;
  }

  @override
  void update(void Function(GChangeBoardTopicInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardTopicInput build() => _build();

  _$GChangeBoardTopicInput _build() {
    final _$result =
        _$v ??
        _$GChangeBoardTopicInput._(
          board_id: BuiltValueNullFieldError.checkNotNull(
            board_id,
            r'GChangeBoardTopicInput',
            'board_id',
          ),
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GChangeBoardTopicInput',
            'circle_id',
          ),
          new_topic: BuiltValueNullFieldError.checkNotNull(
            new_topic,
            r'GChangeBoardTopicInput',
            'new_topic',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeCircleDescriptionInput extends GChangeCircleDescriptionInput {
  @override
  final String circle_id;
  @override
  final String new_description;

  factory _$GChangeCircleDescriptionInput([
    void Function(GChangeCircleDescriptionInputBuilder)? updates,
  ]) => (GChangeCircleDescriptionInputBuilder()..update(updates))._build();

  _$GChangeCircleDescriptionInput._({
    required this.circle_id,
    required this.new_description,
  }) : super._();
  @override
  GChangeCircleDescriptionInput rebuild(
    void Function(GChangeCircleDescriptionInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleDescriptionInputBuilder toBuilder() =>
      GChangeCircleDescriptionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleDescriptionInput &&
        circle_id == other.circle_id &&
        new_description == other.new_description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, new_description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeCircleDescriptionInput')
          ..add('circle_id', circle_id)
          ..add('new_description', new_description))
        .toString();
  }
}

class GChangeCircleDescriptionInputBuilder
    implements
        Builder<
          GChangeCircleDescriptionInput,
          GChangeCircleDescriptionInputBuilder
        > {
  _$GChangeCircleDescriptionInput? _$v;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  String? _new_description;
  String? get new_description => _$this._new_description;
  set new_description(String? new_description) =>
      _$this._new_description = new_description;

  GChangeCircleDescriptionInputBuilder();

  GChangeCircleDescriptionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circle_id = $v.circle_id;
      _new_description = $v.new_description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleDescriptionInput other) {
    _$v = other as _$GChangeCircleDescriptionInput;
  }

  @override
  void update(void Function(GChangeCircleDescriptionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleDescriptionInput build() => _build();

  _$GChangeCircleDescriptionInput _build() {
    final _$result =
        _$v ??
        _$GChangeCircleDescriptionInput._(
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GChangeCircleDescriptionInput',
            'circle_id',
          ),
          new_description: BuiltValueNullFieldError.checkNotNull(
            new_description,
            r'GChangeCircleDescriptionInput',
            'new_description',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeCircleNameInput extends GChangeCircleNameInput {
  @override
  final String circle_id;
  @override
  final String new_name;

  factory _$GChangeCircleNameInput([
    void Function(GChangeCircleNameInputBuilder)? updates,
  ]) => (GChangeCircleNameInputBuilder()..update(updates))._build();

  _$GChangeCircleNameInput._({required this.circle_id, required this.new_name})
    : super._();
  @override
  GChangeCircleNameInput rebuild(
    void Function(GChangeCircleNameInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleNameInputBuilder toBuilder() =>
      GChangeCircleNameInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleNameInput &&
        circle_id == other.circle_id &&
        new_name == other.new_name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, new_name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeCircleNameInput')
          ..add('circle_id', circle_id)
          ..add('new_name', new_name))
        .toString();
  }
}

class GChangeCircleNameInputBuilder
    implements Builder<GChangeCircleNameInput, GChangeCircleNameInputBuilder> {
  _$GChangeCircleNameInput? _$v;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  String? _new_name;
  String? get new_name => _$this._new_name;
  set new_name(String? new_name) => _$this._new_name = new_name;

  GChangeCircleNameInputBuilder();

  GChangeCircleNameInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circle_id = $v.circle_id;
      _new_name = $v.new_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleNameInput other) {
    _$v = other as _$GChangeCircleNameInput;
  }

  @override
  void update(void Function(GChangeCircleNameInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleNameInput build() => _build();

  _$GChangeCircleNameInput _build() {
    final _$result =
        _$v ??
        _$GChangeCircleNameInput._(
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GChangeCircleNameInput',
            'circle_id',
          ),
          new_name: BuiltValueNullFieldError.checkNotNull(
            new_name,
            r'GChangeCircleNameInput',
            'new_name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCreateBoardInput extends GCreateBoardInput {
  @override
  final String circle_id;
  @override
  final String topic;

  factory _$GCreateBoardInput([
    void Function(GCreateBoardInputBuilder)? updates,
  ]) => (GCreateBoardInputBuilder()..update(updates))._build();

  _$GCreateBoardInput._({required this.circle_id, required this.topic})
    : super._();
  @override
  GCreateBoardInput rebuild(void Function(GCreateBoardInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBoardInputBuilder toBuilder() =>
      GCreateBoardInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBoardInput &&
        circle_id == other.circle_id &&
        topic == other.topic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateBoardInput')
          ..add('circle_id', circle_id)
          ..add('topic', topic))
        .toString();
  }
}

class GCreateBoardInputBuilder
    implements Builder<GCreateBoardInput, GCreateBoardInputBuilder> {
  _$GCreateBoardInput? _$v;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  GCreateBoardInputBuilder();

  GCreateBoardInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circle_id = $v.circle_id;
      _topic = $v.topic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBoardInput other) {
    _$v = other as _$GCreateBoardInput;
  }

  @override
  void update(void Function(GCreateBoardInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBoardInput build() => _build();

  _$GCreateBoardInput _build() {
    final _$result =
        _$v ??
        _$GCreateBoardInput._(
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GCreateBoardInput',
            'circle_id',
          ),
          topic: BuiltValueNullFieldError.checkNotNull(
            topic,
            r'GCreateBoardInput',
            'topic',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCircleInput extends GCreateCircleInput {
  @override
  final String description;
  @override
  final String name;

  factory _$GCreateCircleInput([
    void Function(GCreateCircleInputBuilder)? updates,
  ]) => (GCreateCircleInputBuilder()..update(updates))._build();

  _$GCreateCircleInput._({required this.description, required this.name})
    : super._();
  @override
  GCreateCircleInput rebuild(
    void Function(GCreateCircleInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GCreateCircleInputBuilder toBuilder() =>
      GCreateCircleInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCircleInput &&
        description == other.description &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCircleInput')
          ..add('description', description)
          ..add('name', name))
        .toString();
  }
}

class GCreateCircleInputBuilder
    implements Builder<GCreateCircleInput, GCreateCircleInputBuilder> {
  _$GCreateCircleInput? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCreateCircleInputBuilder();

  GCreateCircleInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCircleInput other) {
    _$v = other as _$GCreateCircleInput;
  }

  @override
  void update(void Function(GCreateCircleInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCircleInput build() => _build();

  _$GCreateCircleInput _build() {
    final _$result =
        _$v ??
        _$GCreateCircleInput._(
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'GCreateCircleInput',
            'description',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GCreateCircleInput',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDelegateCircleOwnerInput extends GDelegateCircleOwnerInput {
  @override
  final String circle_id;
  @override
  final String new_owner_id;

  factory _$GDelegateCircleOwnerInput([
    void Function(GDelegateCircleOwnerInputBuilder)? updates,
  ]) => (GDelegateCircleOwnerInputBuilder()..update(updates))._build();

  _$GDelegateCircleOwnerInput._({
    required this.circle_id,
    required this.new_owner_id,
  }) : super._();
  @override
  GDelegateCircleOwnerInput rebuild(
    void Function(GDelegateCircleOwnerInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDelegateCircleOwnerInputBuilder toBuilder() =>
      GDelegateCircleOwnerInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDelegateCircleOwnerInput &&
        circle_id == other.circle_id &&
        new_owner_id == other.new_owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jc(_$hash, new_owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDelegateCircleOwnerInput')
          ..add('circle_id', circle_id)
          ..add('new_owner_id', new_owner_id))
        .toString();
  }
}

class GDelegateCircleOwnerInputBuilder
    implements
        Builder<GDelegateCircleOwnerInput, GDelegateCircleOwnerInputBuilder> {
  _$GDelegateCircleOwnerInput? _$v;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  String? _new_owner_id;
  String? get new_owner_id => _$this._new_owner_id;
  set new_owner_id(String? new_owner_id) => _$this._new_owner_id = new_owner_id;

  GDelegateCircleOwnerInputBuilder();

  GDelegateCircleOwnerInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circle_id = $v.circle_id;
      _new_owner_id = $v.new_owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDelegateCircleOwnerInput other) {
    _$v = other as _$GDelegateCircleOwnerInput;
  }

  @override
  void update(void Function(GDelegateCircleOwnerInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDelegateCircleOwnerInput build() => _build();

  _$GDelegateCircleOwnerInput _build() {
    final _$result =
        _$v ??
        _$GDelegateCircleOwnerInput._(
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GDelegateCircleOwnerInput',
            'circle_id',
          ),
          new_owner_id: BuiltValueNullFieldError.checkNotNull(
            new_owner_id,
            r'GDelegateCircleOwnerInput',
            'new_owner_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteBoardInput extends GDeleteBoardInput {
  @override
  final String board_id;
  @override
  final String circle_id;

  factory _$GDeleteBoardInput([
    void Function(GDeleteBoardInputBuilder)? updates,
  ]) => (GDeleteBoardInputBuilder()..update(updates))._build();

  _$GDeleteBoardInput._({required this.board_id, required this.circle_id})
    : super._();
  @override
  GDeleteBoardInput rebuild(void Function(GDeleteBoardInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteBoardInputBuilder toBuilder() =>
      GDeleteBoardInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteBoardInput &&
        board_id == other.board_id &&
        circle_id == other.circle_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, board_id.hashCode);
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteBoardInput')
          ..add('board_id', board_id)
          ..add('circle_id', circle_id))
        .toString();
  }
}

class GDeleteBoardInputBuilder
    implements Builder<GDeleteBoardInput, GDeleteBoardInputBuilder> {
  _$GDeleteBoardInput? _$v;

  String? _board_id;
  String? get board_id => _$this._board_id;
  set board_id(String? board_id) => _$this._board_id = board_id;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  GDeleteBoardInputBuilder();

  GDeleteBoardInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _board_id = $v.board_id;
      _circle_id = $v.circle_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteBoardInput other) {
    _$v = other as _$GDeleteBoardInput;
  }

  @override
  void update(void Function(GDeleteBoardInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteBoardInput build() => _build();

  _$GDeleteBoardInput _build() {
    final _$result =
        _$v ??
        _$GDeleteBoardInput._(
          board_id: BuiltValueNullFieldError.checkNotNull(
            board_id,
            r'GDeleteBoardInput',
            'board_id',
          ),
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GDeleteBoardInput',
            'circle_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteCircleInput extends GDeleteCircleInput {
  @override
  final String circle_id;

  factory _$GDeleteCircleInput([
    void Function(GDeleteCircleInputBuilder)? updates,
  ]) => (GDeleteCircleInputBuilder()..update(updates))._build();

  _$GDeleteCircleInput._({required this.circle_id}) : super._();
  @override
  GDeleteCircleInput rebuild(
    void Function(GDeleteCircleInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDeleteCircleInputBuilder toBuilder() =>
      GDeleteCircleInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCircleInput && circle_id == other.circle_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, circle_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GDeleteCircleInput',
    )..add('circle_id', circle_id)).toString();
  }
}

class GDeleteCircleInputBuilder
    implements Builder<GDeleteCircleInput, GDeleteCircleInputBuilder> {
  _$GDeleteCircleInput? _$v;

  String? _circle_id;
  String? get circle_id => _$this._circle_id;
  set circle_id(String? circle_id) => _$this._circle_id = circle_id;

  GDeleteCircleInputBuilder();

  GDeleteCircleInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _circle_id = $v.circle_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCircleInput other) {
    _$v = other as _$GDeleteCircleInput;
  }

  @override
  void update(void Function(GDeleteCircleInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCircleInput build() => _build();

  _$GDeleteCircleInput _build() {
    final _$result =
        _$v ??
        _$GDeleteCircleInput._(
          circle_id: BuiltValueNullFieldError.checkNotNull(
            circle_id,
            r'GDeleteCircleInput',
            'circle_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
