// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'board.data.gql.g.dart';

abstract class GGetCircleBoardsData
    implements Built<GGetCircleBoardsData, GGetCircleBoardsDataBuilder> {
  GGetCircleBoardsData._();

  factory GGetCircleBoardsData(
          [void Function(GGetCircleBoardsDataBuilder b) updates]) =
      _$GGetCircleBoardsData;

  static void _initializeBuilder(GGetCircleBoardsDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetCircleBoardsData_boards> get boards;
  static Serializer<GGetCircleBoardsData> get serializer =>
      _$gGetCircleBoardsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleBoardsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleBoardsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleBoardsData.serializer,
        json,
      );
}

abstract class GGetCircleBoardsData_boards
    implements
        Built<GGetCircleBoardsData_boards, GGetCircleBoardsData_boardsBuilder> {
  GGetCircleBoardsData_boards._();

  factory GGetCircleBoardsData_boards(
          [void Function(GGetCircleBoardsData_boardsBuilder b) updates]) =
      _$GGetCircleBoardsData_boards;

  static void _initializeBuilder(GGetCircleBoardsData_boardsBuilder b) =>
      b..G__typename = 'boards';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uuid;
  String get circle_uuid;
  String get owner_id;
  String get topic;
  int get status;
  GGetCircleBoardsData_boards_posts_aggregate get posts_aggregate;
  static Serializer<GGetCircleBoardsData_boards> get serializer =>
      _$gGetCircleBoardsDataBoardsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleBoardsData_boards.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleBoardsData_boards? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleBoardsData_boards.serializer,
        json,
      );
}

abstract class GGetCircleBoardsData_boards_posts_aggregate
    implements
        Built<GGetCircleBoardsData_boards_posts_aggregate,
            GGetCircleBoardsData_boards_posts_aggregateBuilder> {
  GGetCircleBoardsData_boards_posts_aggregate._();

  factory GGetCircleBoardsData_boards_posts_aggregate(
      [void Function(GGetCircleBoardsData_boards_posts_aggregateBuilder b)
          updates]) = _$GGetCircleBoardsData_boards_posts_aggregate;

  static void _initializeBuilder(
          GGetCircleBoardsData_boards_posts_aggregateBuilder b) =>
      b..G__typename = 'posts_aggregate';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCircleBoardsData_boards_posts_aggregate_aggregate? get aggregate;
  static Serializer<GGetCircleBoardsData_boards_posts_aggregate>
      get serializer => _$gGetCircleBoardsDataBoardsPostsAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleBoardsData_boards_posts_aggregate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleBoardsData_boards_posts_aggregate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleBoardsData_boards_posts_aggregate.serializer,
        json,
      );
}

abstract class GGetCircleBoardsData_boards_posts_aggregate_aggregate
    implements
        Built<GGetCircleBoardsData_boards_posts_aggregate_aggregate,
            GGetCircleBoardsData_boards_posts_aggregate_aggregateBuilder> {
  GGetCircleBoardsData_boards_posts_aggregate_aggregate._();

  factory GGetCircleBoardsData_boards_posts_aggregate_aggregate(
      [void Function(
              GGetCircleBoardsData_boards_posts_aggregate_aggregateBuilder b)
          updates]) = _$GGetCircleBoardsData_boards_posts_aggregate_aggregate;

  static void _initializeBuilder(
          GGetCircleBoardsData_boards_posts_aggregate_aggregateBuilder b) =>
      b..G__typename = 'posts_aggregate_fields';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  static Serializer<GGetCircleBoardsData_boards_posts_aggregate_aggregate>
      get serializer =>
          _$gGetCircleBoardsDataBoardsPostsAggregateAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleBoardsData_boards_posts_aggregate_aggregate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleBoardsData_boards_posts_aggregate_aggregate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleBoardsData_boards_posts_aggregate_aggregate.serializer,
        json,
      );
}

abstract class GGetBoardPostsData
    implements Built<GGetBoardPostsData, GGetBoardPostsDataBuilder> {
  GGetBoardPostsData._();

  factory GGetBoardPostsData(
          [void Function(GGetBoardPostsDataBuilder b) updates]) =
      _$GGetBoardPostsData;

  static void _initializeBuilder(GGetBoardPostsDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetBoardPostsData_posts> get posts;
  static Serializer<GGetBoardPostsData> get serializer =>
      _$gGetBoardPostsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetBoardPostsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBoardPostsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetBoardPostsData.serializer,
        json,
      );
}

abstract class GGetBoardPostsData_posts
    implements
        Built<GGetBoardPostsData_posts, GGetBoardPostsData_postsBuilder> {
  GGetBoardPostsData_posts._();

  factory GGetBoardPostsData_posts(
          [void Function(GGetBoardPostsData_postsBuilder b) updates]) =
      _$GGetBoardPostsData_posts;

  static void _initializeBuilder(GGetBoardPostsData_postsBuilder b) =>
      b..G__typename = 'posts';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uuid;
  String get board_uuid;
  String get user_id;
  String get content;
  String get created_at;
  static Serializer<GGetBoardPostsData_posts> get serializer =>
      _$gGetBoardPostsDataPostsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetBoardPostsData_posts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBoardPostsData_posts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetBoardPostsData_posts.serializer,
        json,
      );
}

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
  String get id;
  String get circle_uuid;
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
  String get id;
  String get circle_uuid;
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
  String get id;
  String get circle_uuid;
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
  String get id;
  String get circle_uuid;
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
