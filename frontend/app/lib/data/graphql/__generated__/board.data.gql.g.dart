// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateBoardData> _$gCreateBoardDataSerializer =
    _$GCreateBoardDataSerializer();
Serializer<GCreateBoardData_create_board>
_$gCreateBoardDataCreateBoardSerializer =
    _$GCreateBoardData_create_boardSerializer();
Serializer<GChangeBoardTopicData> _$gChangeBoardTopicDataSerializer =
    _$GChangeBoardTopicDataSerializer();
Serializer<GChangeBoardTopicData_change_board_topic>
_$gChangeBoardTopicDataChangeBoardTopicSerializer =
    _$GChangeBoardTopicData_change_board_topicSerializer();
Serializer<GChangeBoardStatusData> _$gChangeBoardStatusDataSerializer =
    _$GChangeBoardStatusDataSerializer();
Serializer<GChangeBoardStatusData_change_board_status>
_$gChangeBoardStatusDataChangeBoardStatusSerializer =
    _$GChangeBoardStatusData_change_board_statusSerializer();
Serializer<GAddBoardPostData> _$gAddBoardPostDataSerializer =
    _$GAddBoardPostDataSerializer();
Serializer<GAddBoardPostData_add_board_post>
_$gAddBoardPostDataAddBoardPostSerializer =
    _$GAddBoardPostData_add_board_postSerializer();
Serializer<GDeleteBoardData> _$gDeleteBoardDataSerializer =
    _$GDeleteBoardDataSerializer();

class _$GCreateBoardDataSerializer
    implements StructuredSerializer<GCreateBoardData> {
  @override
  final Iterable<Type> types = const [GCreateBoardData, _$GCreateBoardData];
  @override
  final String wireName = 'GCreateBoardData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateBoardData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'create_board',
      serializers.serialize(
        object.create_board,
        specifiedType: const FullType(GCreateBoardData_create_board),
      ),
    ];

    return result;
  }

  @override
  GCreateBoardData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateBoardDataBuilder();

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
        case 'create_board':
          result.create_board.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GCreateBoardData_create_board),
                )!
                as GCreateBoardData_create_board,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBoardData_create_boardSerializer
    implements StructuredSerializer<GCreateBoardData_create_board> {
  @override
  final Iterable<Type> types = const [
    GCreateBoardData_create_board,
    _$GCreateBoardData_create_board,
  ];
  @override
  final String wireName = 'GCreateBoardData_create_board';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateBoardData_create_board object, {
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
      'circle_uuid',
      serializers.serialize(
        object.circle_uuid,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'topic',
      serializers.serialize(
        object.topic,
        specifiedType: const FullType(String),
      ),
      'status',
      serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GCreateBoardData_create_board deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateBoardData_create_boardBuilder();

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
        case 'circle_uuid':
          result.circle_uuid.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'topic':
          result.topic =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'status':
          result.status =
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

class _$GChangeBoardTopicDataSerializer
    implements StructuredSerializer<GChangeBoardTopicData> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardTopicData,
    _$GChangeBoardTopicData,
  ];
  @override
  final String wireName = 'GChangeBoardTopicData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardTopicData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'change_board_topic',
      serializers.serialize(
        object.change_board_topic,
        specifiedType: const FullType(GChangeBoardTopicData_change_board_topic),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardTopicData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardTopicDataBuilder();

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
        case 'change_board_topic':
          result.change_board_topic.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangeBoardTopicData_change_board_topic,
                  ),
                )!
                as GChangeBoardTopicData_change_board_topic,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeBoardTopicData_change_board_topicSerializer
    implements StructuredSerializer<GChangeBoardTopicData_change_board_topic> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardTopicData_change_board_topic,
    _$GChangeBoardTopicData_change_board_topic,
  ];
  @override
  final String wireName = 'GChangeBoardTopicData_change_board_topic';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardTopicData_change_board_topic object, {
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
      'circle_uuid',
      serializers.serialize(
        object.circle_uuid,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'topic',
      serializers.serialize(
        object.topic,
        specifiedType: const FullType(String),
      ),
      'status',
      serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardTopicData_change_board_topic deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardTopicData_change_board_topicBuilder();

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
        case 'circle_uuid':
          result.circle_uuid.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'topic':
          result.topic =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'status':
          result.status =
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

class _$GChangeBoardStatusDataSerializer
    implements StructuredSerializer<GChangeBoardStatusData> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardStatusData,
    _$GChangeBoardStatusData,
  ];
  @override
  final String wireName = 'GChangeBoardStatusData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardStatusData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'change_board_status',
      serializers.serialize(
        object.change_board_status,
        specifiedType: const FullType(
          GChangeBoardStatusData_change_board_status,
        ),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardStatusData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardStatusDataBuilder();

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
        case 'change_board_status':
          result.change_board_status.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangeBoardStatusData_change_board_status,
                  ),
                )!
                as GChangeBoardStatusData_change_board_status,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeBoardStatusData_change_board_statusSerializer
    implements
        StructuredSerializer<GChangeBoardStatusData_change_board_status> {
  @override
  final Iterable<Type> types = const [
    GChangeBoardStatusData_change_board_status,
    _$GChangeBoardStatusData_change_board_status,
  ];
  @override
  final String wireName = 'GChangeBoardStatusData_change_board_status';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeBoardStatusData_change_board_status object, {
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
      'circle_uuid',
      serializers.serialize(
        object.circle_uuid,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'topic',
      serializers.serialize(
        object.topic,
        specifiedType: const FullType(String),
      ),
      'status',
      serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeBoardStatusData_change_board_status deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeBoardStatusData_change_board_statusBuilder();

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
        case 'circle_uuid':
          result.circle_uuid.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'topic':
          result.topic =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'status':
          result.status =
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

class _$GAddBoardPostDataSerializer
    implements StructuredSerializer<GAddBoardPostData> {
  @override
  final Iterable<Type> types = const [GAddBoardPostData, _$GAddBoardPostData];
  @override
  final String wireName = 'GAddBoardPostData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddBoardPostData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'add_board_post',
      serializers.serialize(
        object.add_board_post,
        specifiedType: const FullType(GAddBoardPostData_add_board_post),
      ),
    ];

    return result;
  }

  @override
  GAddBoardPostData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddBoardPostDataBuilder();

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
        case 'add_board_post':
          result.add_board_post.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GAddBoardPostData_add_board_post,
                  ),
                )!
                as GAddBoardPostData_add_board_post,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GAddBoardPostData_add_board_postSerializer
    implements StructuredSerializer<GAddBoardPostData_add_board_post> {
  @override
  final Iterable<Type> types = const [
    GAddBoardPostData_add_board_post,
    _$GAddBoardPostData_add_board_post,
  ];
  @override
  final String wireName = 'GAddBoardPostData_add_board_post';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddBoardPostData_add_board_post object, {
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
      'circle_uuid',
      serializers.serialize(
        object.circle_uuid,
        specifiedType: const FullType(_i2.GUUID),
      ),
      'topic',
      serializers.serialize(
        object.topic,
        specifiedType: const FullType(String),
      ),
      'status',
      serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GAddBoardPostData_add_board_post deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddBoardPostData_add_board_postBuilder();

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
        case 'circle_uuid':
          result.circle_uuid.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.GUUID),
                )!
                as _i2.GUUID,
          );
          break;
        case 'topic':
          result.topic =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'status':
          result.status =
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

class _$GDeleteBoardDataSerializer
    implements StructuredSerializer<GDeleteBoardData> {
  @override
  final Iterable<Type> types = const [GDeleteBoardData, _$GDeleteBoardData];
  @override
  final String wireName = 'GDeleteBoardData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteBoardData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'delete_board',
      serializers.serialize(
        object.delete_board,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GDeleteBoardData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteBoardDataBuilder();

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
        case 'delete_board':
          result.delete_board =
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

class _$GCreateBoardData extends GCreateBoardData {
  @override
  final String G__typename;
  @override
  final GCreateBoardData_create_board create_board;

  factory _$GCreateBoardData([
    void Function(GCreateBoardDataBuilder)? updates,
  ]) => (GCreateBoardDataBuilder()..update(updates))._build();

  _$GCreateBoardData._({required this.G__typename, required this.create_board})
    : super._();
  @override
  GCreateBoardData rebuild(void Function(GCreateBoardDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBoardDataBuilder toBuilder() =>
      GCreateBoardDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBoardData &&
        G__typename == other.G__typename &&
        create_board == other.create_board;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, create_board.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateBoardData')
          ..add('G__typename', G__typename)
          ..add('create_board', create_board))
        .toString();
  }
}

class GCreateBoardDataBuilder
    implements Builder<GCreateBoardData, GCreateBoardDataBuilder> {
  _$GCreateBoardData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateBoardData_create_boardBuilder? _create_board;
  GCreateBoardData_create_boardBuilder get create_board =>
      _$this._create_board ??= GCreateBoardData_create_boardBuilder();
  set create_board(GCreateBoardData_create_boardBuilder? create_board) =>
      _$this._create_board = create_board;

  GCreateBoardDataBuilder() {
    GCreateBoardData._initializeBuilder(this);
  }

  GCreateBoardDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _create_board = $v.create_board.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBoardData other) {
    _$v = other as _$GCreateBoardData;
  }

  @override
  void update(void Function(GCreateBoardDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBoardData build() => _build();

  _$GCreateBoardData _build() {
    _$GCreateBoardData _$result;
    try {
      _$result =
          _$v ??
          _$GCreateBoardData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GCreateBoardData',
              'G__typename',
            ),
            create_board: create_board.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'create_board';
        create_board.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GCreateBoardData',
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

class _$GCreateBoardData_create_board extends GCreateBoardData_create_board {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final _i2.GUUID circle_uuid;
  @override
  final String topic;
  @override
  final String status;

  factory _$GCreateBoardData_create_board([
    void Function(GCreateBoardData_create_boardBuilder)? updates,
  ]) => (GCreateBoardData_create_boardBuilder()..update(updates))._build();

  _$GCreateBoardData_create_board._({
    required this.G__typename,
    required this.id,
    required this.circle_uuid,
    required this.topic,
    required this.status,
  }) : super._();
  @override
  GCreateBoardData_create_board rebuild(
    void Function(GCreateBoardData_create_boardBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GCreateBoardData_create_boardBuilder toBuilder() =>
      GCreateBoardData_create_boardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBoardData_create_board &&
        G__typename == other.G__typename &&
        id == other.id &&
        circle_uuid == other.circle_uuid &&
        topic == other.topic &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, circle_uuid.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateBoardData_create_board')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('circle_uuid', circle_uuid)
          ..add('topic', topic)
          ..add('status', status))
        .toString();
  }
}

class GCreateBoardData_create_boardBuilder
    implements
        Builder<
          GCreateBoardData_create_board,
          GCreateBoardData_create_boardBuilder
        > {
  _$GCreateBoardData_create_board? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  _i2.GUUIDBuilder? _circle_uuid;
  _i2.GUUIDBuilder get circle_uuid =>
      _$this._circle_uuid ??= _i2.GUUIDBuilder();
  set circle_uuid(_i2.GUUIDBuilder? circle_uuid) =>
      _$this._circle_uuid = circle_uuid;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GCreateBoardData_create_boardBuilder() {
    GCreateBoardData_create_board._initializeBuilder(this);
  }

  GCreateBoardData_create_boardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _circle_uuid = $v.circle_uuid.toBuilder();
      _topic = $v.topic;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBoardData_create_board other) {
    _$v = other as _$GCreateBoardData_create_board;
  }

  @override
  void update(void Function(GCreateBoardData_create_boardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBoardData_create_board build() => _build();

  _$GCreateBoardData_create_board _build() {
    _$GCreateBoardData_create_board _$result;
    try {
      _$result =
          _$v ??
          _$GCreateBoardData_create_board._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GCreateBoardData_create_board',
              'G__typename',
            ),
            id: id.build(),
            circle_uuid: circle_uuid.build(),
            topic: BuiltValueNullFieldError.checkNotNull(
              topic,
              r'GCreateBoardData_create_board',
              'topic',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GCreateBoardData_create_board',
              'status',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
        _$failedField = 'circle_uuid';
        circle_uuid.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GCreateBoardData_create_board',
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

class _$GChangeBoardTopicData extends GChangeBoardTopicData {
  @override
  final String G__typename;
  @override
  final GChangeBoardTopicData_change_board_topic change_board_topic;

  factory _$GChangeBoardTopicData([
    void Function(GChangeBoardTopicDataBuilder)? updates,
  ]) => (GChangeBoardTopicDataBuilder()..update(updates))._build();

  _$GChangeBoardTopicData._({
    required this.G__typename,
    required this.change_board_topic,
  }) : super._();
  @override
  GChangeBoardTopicData rebuild(
    void Function(GChangeBoardTopicDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardTopicDataBuilder toBuilder() =>
      GChangeBoardTopicDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardTopicData &&
        G__typename == other.G__typename &&
        change_board_topic == other.change_board_topic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, change_board_topic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeBoardTopicData')
          ..add('G__typename', G__typename)
          ..add('change_board_topic', change_board_topic))
        .toString();
  }
}

class GChangeBoardTopicDataBuilder
    implements Builder<GChangeBoardTopicData, GChangeBoardTopicDataBuilder> {
  _$GChangeBoardTopicData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangeBoardTopicData_change_board_topicBuilder? _change_board_topic;
  GChangeBoardTopicData_change_board_topicBuilder get change_board_topic =>
      _$this._change_board_topic ??=
          GChangeBoardTopicData_change_board_topicBuilder();
  set change_board_topic(
    GChangeBoardTopicData_change_board_topicBuilder? change_board_topic,
  ) => _$this._change_board_topic = change_board_topic;

  GChangeBoardTopicDataBuilder() {
    GChangeBoardTopicData._initializeBuilder(this);
  }

  GChangeBoardTopicDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _change_board_topic = $v.change_board_topic.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardTopicData other) {
    _$v = other as _$GChangeBoardTopicData;
  }

  @override
  void update(void Function(GChangeBoardTopicDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardTopicData build() => _build();

  _$GChangeBoardTopicData _build() {
    _$GChangeBoardTopicData _$result;
    try {
      _$result =
          _$v ??
          _$GChangeBoardTopicData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeBoardTopicData',
              'G__typename',
            ),
            change_board_topic: change_board_topic.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'change_board_topic';
        change_board_topic.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeBoardTopicData',
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

class _$GChangeBoardTopicData_change_board_topic
    extends GChangeBoardTopicData_change_board_topic {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final _i2.GUUID circle_uuid;
  @override
  final String topic;
  @override
  final String status;

  factory _$GChangeBoardTopicData_change_board_topic([
    void Function(GChangeBoardTopicData_change_board_topicBuilder)? updates,
  ]) => (GChangeBoardTopicData_change_board_topicBuilder()..update(updates))
      ._build();

  _$GChangeBoardTopicData_change_board_topic._({
    required this.G__typename,
    required this.id,
    required this.circle_uuid,
    required this.topic,
    required this.status,
  }) : super._();
  @override
  GChangeBoardTopicData_change_board_topic rebuild(
    void Function(GChangeBoardTopicData_change_board_topicBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardTopicData_change_board_topicBuilder toBuilder() =>
      GChangeBoardTopicData_change_board_topicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardTopicData_change_board_topic &&
        G__typename == other.G__typename &&
        id == other.id &&
        circle_uuid == other.circle_uuid &&
        topic == other.topic &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, circle_uuid.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChangeBoardTopicData_change_board_topic',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('circle_uuid', circle_uuid)
          ..add('topic', topic)
          ..add('status', status))
        .toString();
  }
}

class GChangeBoardTopicData_change_board_topicBuilder
    implements
        Builder<
          GChangeBoardTopicData_change_board_topic,
          GChangeBoardTopicData_change_board_topicBuilder
        > {
  _$GChangeBoardTopicData_change_board_topic? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  _i2.GUUIDBuilder? _circle_uuid;
  _i2.GUUIDBuilder get circle_uuid =>
      _$this._circle_uuid ??= _i2.GUUIDBuilder();
  set circle_uuid(_i2.GUUIDBuilder? circle_uuid) =>
      _$this._circle_uuid = circle_uuid;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GChangeBoardTopicData_change_board_topicBuilder() {
    GChangeBoardTopicData_change_board_topic._initializeBuilder(this);
  }

  GChangeBoardTopicData_change_board_topicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _circle_uuid = $v.circle_uuid.toBuilder();
      _topic = $v.topic;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardTopicData_change_board_topic other) {
    _$v = other as _$GChangeBoardTopicData_change_board_topic;
  }

  @override
  void update(
    void Function(GChangeBoardTopicData_change_board_topicBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardTopicData_change_board_topic build() => _build();

  _$GChangeBoardTopicData_change_board_topic _build() {
    _$GChangeBoardTopicData_change_board_topic _$result;
    try {
      _$result =
          _$v ??
          _$GChangeBoardTopicData_change_board_topic._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeBoardTopicData_change_board_topic',
              'G__typename',
            ),
            id: id.build(),
            circle_uuid: circle_uuid.build(),
            topic: BuiltValueNullFieldError.checkNotNull(
              topic,
              r'GChangeBoardTopicData_change_board_topic',
              'topic',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GChangeBoardTopicData_change_board_topic',
              'status',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
        _$failedField = 'circle_uuid';
        circle_uuid.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeBoardTopicData_change_board_topic',
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

class _$GChangeBoardStatusData extends GChangeBoardStatusData {
  @override
  final String G__typename;
  @override
  final GChangeBoardStatusData_change_board_status change_board_status;

  factory _$GChangeBoardStatusData([
    void Function(GChangeBoardStatusDataBuilder)? updates,
  ]) => (GChangeBoardStatusDataBuilder()..update(updates))._build();

  _$GChangeBoardStatusData._({
    required this.G__typename,
    required this.change_board_status,
  }) : super._();
  @override
  GChangeBoardStatusData rebuild(
    void Function(GChangeBoardStatusDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardStatusDataBuilder toBuilder() =>
      GChangeBoardStatusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardStatusData &&
        G__typename == other.G__typename &&
        change_board_status == other.change_board_status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, change_board_status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeBoardStatusData')
          ..add('G__typename', G__typename)
          ..add('change_board_status', change_board_status))
        .toString();
  }
}

class GChangeBoardStatusDataBuilder
    implements Builder<GChangeBoardStatusData, GChangeBoardStatusDataBuilder> {
  _$GChangeBoardStatusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangeBoardStatusData_change_board_statusBuilder? _change_board_status;
  GChangeBoardStatusData_change_board_statusBuilder get change_board_status =>
      _$this._change_board_status ??=
          GChangeBoardStatusData_change_board_statusBuilder();
  set change_board_status(
    GChangeBoardStatusData_change_board_statusBuilder? change_board_status,
  ) => _$this._change_board_status = change_board_status;

  GChangeBoardStatusDataBuilder() {
    GChangeBoardStatusData._initializeBuilder(this);
  }

  GChangeBoardStatusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _change_board_status = $v.change_board_status.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardStatusData other) {
    _$v = other as _$GChangeBoardStatusData;
  }

  @override
  void update(void Function(GChangeBoardStatusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardStatusData build() => _build();

  _$GChangeBoardStatusData _build() {
    _$GChangeBoardStatusData _$result;
    try {
      _$result =
          _$v ??
          _$GChangeBoardStatusData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeBoardStatusData',
              'G__typename',
            ),
            change_board_status: change_board_status.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'change_board_status';
        change_board_status.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeBoardStatusData',
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

class _$GChangeBoardStatusData_change_board_status
    extends GChangeBoardStatusData_change_board_status {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final _i2.GUUID circle_uuid;
  @override
  final String topic;
  @override
  final String status;

  factory _$GChangeBoardStatusData_change_board_status([
    void Function(GChangeBoardStatusData_change_board_statusBuilder)? updates,
  ]) => (GChangeBoardStatusData_change_board_statusBuilder()..update(updates))
      ._build();

  _$GChangeBoardStatusData_change_board_status._({
    required this.G__typename,
    required this.id,
    required this.circle_uuid,
    required this.topic,
    required this.status,
  }) : super._();
  @override
  GChangeBoardStatusData_change_board_status rebuild(
    void Function(GChangeBoardStatusData_change_board_statusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeBoardStatusData_change_board_statusBuilder toBuilder() =>
      GChangeBoardStatusData_change_board_statusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeBoardStatusData_change_board_status &&
        G__typename == other.G__typename &&
        id == other.id &&
        circle_uuid == other.circle_uuid &&
        topic == other.topic &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, circle_uuid.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChangeBoardStatusData_change_board_status',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('circle_uuid', circle_uuid)
          ..add('topic', topic)
          ..add('status', status))
        .toString();
  }
}

class GChangeBoardStatusData_change_board_statusBuilder
    implements
        Builder<
          GChangeBoardStatusData_change_board_status,
          GChangeBoardStatusData_change_board_statusBuilder
        > {
  _$GChangeBoardStatusData_change_board_status? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  _i2.GUUIDBuilder? _circle_uuid;
  _i2.GUUIDBuilder get circle_uuid =>
      _$this._circle_uuid ??= _i2.GUUIDBuilder();
  set circle_uuid(_i2.GUUIDBuilder? circle_uuid) =>
      _$this._circle_uuid = circle_uuid;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GChangeBoardStatusData_change_board_statusBuilder() {
    GChangeBoardStatusData_change_board_status._initializeBuilder(this);
  }

  GChangeBoardStatusData_change_board_statusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _circle_uuid = $v.circle_uuid.toBuilder();
      _topic = $v.topic;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeBoardStatusData_change_board_status other) {
    _$v = other as _$GChangeBoardStatusData_change_board_status;
  }

  @override
  void update(
    void Function(GChangeBoardStatusData_change_board_statusBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeBoardStatusData_change_board_status build() => _build();

  _$GChangeBoardStatusData_change_board_status _build() {
    _$GChangeBoardStatusData_change_board_status _$result;
    try {
      _$result =
          _$v ??
          _$GChangeBoardStatusData_change_board_status._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeBoardStatusData_change_board_status',
              'G__typename',
            ),
            id: id.build(),
            circle_uuid: circle_uuid.build(),
            topic: BuiltValueNullFieldError.checkNotNull(
              topic,
              r'GChangeBoardStatusData_change_board_status',
              'topic',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GChangeBoardStatusData_change_board_status',
              'status',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
        _$failedField = 'circle_uuid';
        circle_uuid.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeBoardStatusData_change_board_status',
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

class _$GAddBoardPostData extends GAddBoardPostData {
  @override
  final String G__typename;
  @override
  final GAddBoardPostData_add_board_post add_board_post;

  factory _$GAddBoardPostData([
    void Function(GAddBoardPostDataBuilder)? updates,
  ]) => (GAddBoardPostDataBuilder()..update(updates))._build();

  _$GAddBoardPostData._({
    required this.G__typename,
    required this.add_board_post,
  }) : super._();
  @override
  GAddBoardPostData rebuild(void Function(GAddBoardPostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddBoardPostDataBuilder toBuilder() =>
      GAddBoardPostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddBoardPostData &&
        G__typename == other.G__typename &&
        add_board_post == other.add_board_post;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, add_board_post.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddBoardPostData')
          ..add('G__typename', G__typename)
          ..add('add_board_post', add_board_post))
        .toString();
  }
}

class GAddBoardPostDataBuilder
    implements Builder<GAddBoardPostData, GAddBoardPostDataBuilder> {
  _$GAddBoardPostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAddBoardPostData_add_board_postBuilder? _add_board_post;
  GAddBoardPostData_add_board_postBuilder get add_board_post =>
      _$this._add_board_post ??= GAddBoardPostData_add_board_postBuilder();
  set add_board_post(GAddBoardPostData_add_board_postBuilder? add_board_post) =>
      _$this._add_board_post = add_board_post;

  GAddBoardPostDataBuilder() {
    GAddBoardPostData._initializeBuilder(this);
  }

  GAddBoardPostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _add_board_post = $v.add_board_post.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddBoardPostData other) {
    _$v = other as _$GAddBoardPostData;
  }

  @override
  void update(void Function(GAddBoardPostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddBoardPostData build() => _build();

  _$GAddBoardPostData _build() {
    _$GAddBoardPostData _$result;
    try {
      _$result =
          _$v ??
          _$GAddBoardPostData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAddBoardPostData',
              'G__typename',
            ),
            add_board_post: add_board_post.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'add_board_post';
        add_board_post.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAddBoardPostData',
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

class _$GAddBoardPostData_add_board_post
    extends GAddBoardPostData_add_board_post {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final _i2.GUUID circle_uuid;
  @override
  final String topic;
  @override
  final String status;

  factory _$GAddBoardPostData_add_board_post([
    void Function(GAddBoardPostData_add_board_postBuilder)? updates,
  ]) => (GAddBoardPostData_add_board_postBuilder()..update(updates))._build();

  _$GAddBoardPostData_add_board_post._({
    required this.G__typename,
    required this.id,
    required this.circle_uuid,
    required this.topic,
    required this.status,
  }) : super._();
  @override
  GAddBoardPostData_add_board_post rebuild(
    void Function(GAddBoardPostData_add_board_postBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAddBoardPostData_add_board_postBuilder toBuilder() =>
      GAddBoardPostData_add_board_postBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddBoardPostData_add_board_post &&
        G__typename == other.G__typename &&
        id == other.id &&
        circle_uuid == other.circle_uuid &&
        topic == other.topic &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, circle_uuid.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddBoardPostData_add_board_post')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('circle_uuid', circle_uuid)
          ..add('topic', topic)
          ..add('status', status))
        .toString();
  }
}

class GAddBoardPostData_add_board_postBuilder
    implements
        Builder<
          GAddBoardPostData_add_board_post,
          GAddBoardPostData_add_board_postBuilder
        > {
  _$GAddBoardPostData_add_board_post? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  _i2.GUUIDBuilder? _circle_uuid;
  _i2.GUUIDBuilder get circle_uuid =>
      _$this._circle_uuid ??= _i2.GUUIDBuilder();
  set circle_uuid(_i2.GUUIDBuilder? circle_uuid) =>
      _$this._circle_uuid = circle_uuid;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GAddBoardPostData_add_board_postBuilder() {
    GAddBoardPostData_add_board_post._initializeBuilder(this);
  }

  GAddBoardPostData_add_board_postBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _circle_uuid = $v.circle_uuid.toBuilder();
      _topic = $v.topic;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddBoardPostData_add_board_post other) {
    _$v = other as _$GAddBoardPostData_add_board_post;
  }

  @override
  void update(void Function(GAddBoardPostData_add_board_postBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddBoardPostData_add_board_post build() => _build();

  _$GAddBoardPostData_add_board_post _build() {
    _$GAddBoardPostData_add_board_post _$result;
    try {
      _$result =
          _$v ??
          _$GAddBoardPostData_add_board_post._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAddBoardPostData_add_board_post',
              'G__typename',
            ),
            id: id.build(),
            circle_uuid: circle_uuid.build(),
            topic: BuiltValueNullFieldError.checkNotNull(
              topic,
              r'GAddBoardPostData_add_board_post',
              'topic',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'GAddBoardPostData_add_board_post',
              'status',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
        _$failedField = 'circle_uuid';
        circle_uuid.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GAddBoardPostData_add_board_post',
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

class _$GDeleteBoardData extends GDeleteBoardData {
  @override
  final String G__typename;
  @override
  final bool delete_board;

  factory _$GDeleteBoardData([
    void Function(GDeleteBoardDataBuilder)? updates,
  ]) => (GDeleteBoardDataBuilder()..update(updates))._build();

  _$GDeleteBoardData._({required this.G__typename, required this.delete_board})
    : super._();
  @override
  GDeleteBoardData rebuild(void Function(GDeleteBoardDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteBoardDataBuilder toBuilder() =>
      GDeleteBoardDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteBoardData &&
        G__typename == other.G__typename &&
        delete_board == other.delete_board;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delete_board.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteBoardData')
          ..add('G__typename', G__typename)
          ..add('delete_board', delete_board))
        .toString();
  }
}

class GDeleteBoardDataBuilder
    implements Builder<GDeleteBoardData, GDeleteBoardDataBuilder> {
  _$GDeleteBoardData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete_board;
  bool? get delete_board => _$this._delete_board;
  set delete_board(bool? delete_board) => _$this._delete_board = delete_board;

  GDeleteBoardDataBuilder() {
    GDeleteBoardData._initializeBuilder(this);
  }

  GDeleteBoardDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delete_board = $v.delete_board;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteBoardData other) {
    _$v = other as _$GDeleteBoardData;
  }

  @override
  void update(void Function(GDeleteBoardDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteBoardData build() => _build();

  _$GDeleteBoardData _build() {
    final _$result =
        _$v ??
        _$GDeleteBoardData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GDeleteBoardData',
            'G__typename',
          ),
          delete_board: BuiltValueNullFieldError.checkNotNull(
            delete_board,
            r'GDeleteBoardData',
            'delete_board',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
