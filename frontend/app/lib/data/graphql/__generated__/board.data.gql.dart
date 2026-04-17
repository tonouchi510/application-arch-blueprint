// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'board.data.gql.g.dart';

abstract class GCreateBoardData
    implements Built<GCreateBoardData, GCreateBoardDataBuilder> {
  GCreateBoardData._();

  factory GCreateBoardData([void Function(GCreateBoardDataBuilder b) updates]) =
      _$GCreateBoardData;

  static void _initializeBuilder(GCreateBoardDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateBoardData_create_board get create_board;
  static Serializer<GCreateBoardData> get serializer =>
      _$gCreateBoardDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBoardData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBoardData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBoardData.serializer,
        json,
      );
}

abstract class GCreateBoardData_create_board
    implements
        Built<GCreateBoardData_create_board,
            GCreateBoardData_create_boardBuilder> {
  GCreateBoardData_create_board._();

  factory GCreateBoardData_create_board(
          [void Function(GCreateBoardData_create_boardBuilder b) updates]) =
      _$GCreateBoardData_create_board;

  static void _initializeBuilder(GCreateBoardData_create_boardBuilder b) =>
      b..G__typename = 'BoardModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUUID get id;
  _i2.GUUID get circle_uuid;
  String get topic;
  String get status;
  static Serializer<GCreateBoardData_create_board> get serializer =>
      _$gCreateBoardDataCreateBoardSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBoardData_create_board.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBoardData_create_board? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBoardData_create_board.serializer,
        json,
      );
}

abstract class GChangeBoardTopicData
    implements Built<GChangeBoardTopicData, GChangeBoardTopicDataBuilder> {
  GChangeBoardTopicData._();

  factory GChangeBoardTopicData(
          [void Function(GChangeBoardTopicDataBuilder b) updates]) =
      _$GChangeBoardTopicData;

  static void _initializeBuilder(GChangeBoardTopicDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChangeBoardTopicData_change_board_topic get change_board_topic;
  static Serializer<GChangeBoardTopicData> get serializer =>
      _$gChangeBoardTopicDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardTopicData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardTopicData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardTopicData.serializer,
        json,
      );
}

abstract class GChangeBoardTopicData_change_board_topic
    implements
        Built<GChangeBoardTopicData_change_board_topic,
            GChangeBoardTopicData_change_board_topicBuilder> {
  GChangeBoardTopicData_change_board_topic._();

  factory GChangeBoardTopicData_change_board_topic(
      [void Function(GChangeBoardTopicData_change_board_topicBuilder b)
          updates]) = _$GChangeBoardTopicData_change_board_topic;

  static void _initializeBuilder(
          GChangeBoardTopicData_change_board_topicBuilder b) =>
      b..G__typename = 'BoardModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUUID get id;
  _i2.GUUID get circle_uuid;
  String get topic;
  String get status;
  static Serializer<GChangeBoardTopicData_change_board_topic> get serializer =>
      _$gChangeBoardTopicDataChangeBoardTopicSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardTopicData_change_board_topic.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardTopicData_change_board_topic? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardTopicData_change_board_topic.serializer,
        json,
      );
}

abstract class GChangeBoardStatusData
    implements Built<GChangeBoardStatusData, GChangeBoardStatusDataBuilder> {
  GChangeBoardStatusData._();

  factory GChangeBoardStatusData(
          [void Function(GChangeBoardStatusDataBuilder b) updates]) =
      _$GChangeBoardStatusData;

  static void _initializeBuilder(GChangeBoardStatusDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChangeBoardStatusData_change_board_status get change_board_status;
  static Serializer<GChangeBoardStatusData> get serializer =>
      _$gChangeBoardStatusDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardStatusData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardStatusData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardStatusData.serializer,
        json,
      );
}

abstract class GChangeBoardStatusData_change_board_status
    implements
        Built<GChangeBoardStatusData_change_board_status,
            GChangeBoardStatusData_change_board_statusBuilder> {
  GChangeBoardStatusData_change_board_status._();

  factory GChangeBoardStatusData_change_board_status(
      [void Function(GChangeBoardStatusData_change_board_statusBuilder b)
          updates]) = _$GChangeBoardStatusData_change_board_status;

  static void _initializeBuilder(
          GChangeBoardStatusData_change_board_statusBuilder b) =>
      b..G__typename = 'BoardModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUUID get id;
  _i2.GUUID get circle_uuid;
  String get topic;
  String get status;
  static Serializer<GChangeBoardStatusData_change_board_status>
      get serializer => _$gChangeBoardStatusDataChangeBoardStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardStatusData_change_board_status.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardStatusData_change_board_status? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardStatusData_change_board_status.serializer,
        json,
      );
}

abstract class GAddBoardPostData
    implements Built<GAddBoardPostData, GAddBoardPostDataBuilder> {
  GAddBoardPostData._();

  factory GAddBoardPostData(
          [void Function(GAddBoardPostDataBuilder b) updates]) =
      _$GAddBoardPostData;

  static void _initializeBuilder(GAddBoardPostDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddBoardPostData_add_board_post get add_board_post;
  static Serializer<GAddBoardPostData> get serializer =>
      _$gAddBoardPostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddBoardPostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddBoardPostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddBoardPostData.serializer,
        json,
      );
}

abstract class GAddBoardPostData_add_board_post
    implements
        Built<GAddBoardPostData_add_board_post,
            GAddBoardPostData_add_board_postBuilder> {
  GAddBoardPostData_add_board_post._();

  factory GAddBoardPostData_add_board_post(
          [void Function(GAddBoardPostData_add_board_postBuilder b) updates]) =
      _$GAddBoardPostData_add_board_post;

  static void _initializeBuilder(GAddBoardPostData_add_board_postBuilder b) =>
      b..G__typename = 'BoardModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUUID get id;
  _i2.GUUID get circle_uuid;
  String get topic;
  String get status;
  static Serializer<GAddBoardPostData_add_board_post> get serializer =>
      _$gAddBoardPostDataAddBoardPostSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddBoardPostData_add_board_post.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddBoardPostData_add_board_post? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddBoardPostData_add_board_post.serializer,
        json,
      );
}

abstract class GDeleteBoardData
    implements Built<GDeleteBoardData, GDeleteBoardDataBuilder> {
  GDeleteBoardData._();

  factory GDeleteBoardData([void Function(GDeleteBoardDataBuilder b) updates]) =
      _$GDeleteBoardData;

  static void _initializeBuilder(GDeleteBoardDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get delete_board;
  static Serializer<GDeleteBoardData> get serializer =>
      _$gDeleteBoardDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteBoardData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteBoardData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteBoardData.serializer,
        json,
      );
}
