// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'board.var.gql.g.dart';

abstract class GGetCircleBoardsVars
    implements Built<GGetCircleBoardsVars, GGetCircleBoardsVarsBuilder> {
  GGetCircleBoardsVars._();

  factory GGetCircleBoardsVars(
          [void Function(GGetCircleBoardsVarsBuilder b) updates]) =
      _$GGetCircleBoardsVars;

  String get circleId;
  static Serializer<GGetCircleBoardsVars> get serializer =>
      _$gGetCircleBoardsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleBoardsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleBoardsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleBoardsVars.serializer,
        json,
      );
}

abstract class GGetBoardPostsVars
    implements Built<GGetBoardPostsVars, GGetBoardPostsVarsBuilder> {
  GGetBoardPostsVars._();

  factory GGetBoardPostsVars(
          [void Function(GGetBoardPostsVarsBuilder b) updates]) =
      _$GGetBoardPostsVars;

  String get boardId;
  static Serializer<GGetBoardPostsVars> get serializer =>
      _$gGetBoardPostsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetBoardPostsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBoardPostsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetBoardPostsVars.serializer,
        json,
      );
}

abstract class GCreateBoardVars
    implements Built<GCreateBoardVars, GCreateBoardVarsBuilder> {
  GCreateBoardVars._();

  factory GCreateBoardVars([void Function(GCreateBoardVarsBuilder b) updates]) =
      _$GCreateBoardVars;

  _i2.GCreateBoardInput get input;
  static Serializer<GCreateBoardVars> get serializer =>
      _$gCreateBoardVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBoardVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBoardVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBoardVars.serializer,
        json,
      );
}

abstract class GChangeBoardTopicVars
    implements Built<GChangeBoardTopicVars, GChangeBoardTopicVarsBuilder> {
  GChangeBoardTopicVars._();

  factory GChangeBoardTopicVars(
          [void Function(GChangeBoardTopicVarsBuilder b) updates]) =
      _$GChangeBoardTopicVars;

  _i2.GChangeBoardTopicInput get input;
  static Serializer<GChangeBoardTopicVars> get serializer =>
      _$gChangeBoardTopicVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardTopicVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardTopicVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardTopicVars.serializer,
        json,
      );
}

abstract class GChangeBoardStatusVars
    implements Built<GChangeBoardStatusVars, GChangeBoardStatusVarsBuilder> {
  GChangeBoardStatusVars._();

  factory GChangeBoardStatusVars(
          [void Function(GChangeBoardStatusVarsBuilder b) updates]) =
      _$GChangeBoardStatusVars;

  _i2.GChangeBoardStatusInput get input;
  static Serializer<GChangeBoardStatusVars> get serializer =>
      _$gChangeBoardStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardStatusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardStatusVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardStatusVars.serializer,
        json,
      );
}

abstract class GAddBoardPostVars
    implements Built<GAddBoardPostVars, GAddBoardPostVarsBuilder> {
  GAddBoardPostVars._();

  factory GAddBoardPostVars(
          [void Function(GAddBoardPostVarsBuilder b) updates]) =
      _$GAddBoardPostVars;

  _i2.GAddBoardPostInput get input;
  static Serializer<GAddBoardPostVars> get serializer =>
      _$gAddBoardPostVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddBoardPostVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddBoardPostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddBoardPostVars.serializer,
        json,
      );
}

abstract class GDeleteBoardVars
    implements Built<GDeleteBoardVars, GDeleteBoardVarsBuilder> {
  GDeleteBoardVars._();

  factory GDeleteBoardVars([void Function(GDeleteBoardVarsBuilder b) updates]) =
      _$GDeleteBoardVars;

  _i2.GDeleteBoardInput get input;
  static Serializer<GDeleteBoardVars> get serializer =>
      _$gDeleteBoardVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteBoardVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteBoardVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteBoardVars.serializer,
        json,
      );
}
