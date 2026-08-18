// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'circle.var.gql.g.dart';

abstract class GGetMyCirclesVars
    implements Built<GGetMyCirclesVars, GGetMyCirclesVarsBuilder> {
  GGetMyCirclesVars._();

  factory GGetMyCirclesVars(
          [void Function(GGetMyCirclesVarsBuilder b) updates]) =
      _$GGetMyCirclesVars;

  String get uid;
  static Serializer<GGetMyCirclesVars> get serializer =>
      _$gGetMyCirclesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetMyCirclesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetMyCirclesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetMyCirclesVars.serializer,
        json,
      );
}

abstract class GGetAllCirclesVars
    implements Built<GGetAllCirclesVars, GGetAllCirclesVarsBuilder> {
  GGetAllCirclesVars._();

  factory GGetAllCirclesVars(
          [void Function(GGetAllCirclesVarsBuilder b) updates]) =
      _$GGetAllCirclesVars;

  static Serializer<GGetAllCirclesVars> get serializer =>
      _$gGetAllCirclesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllCirclesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllCirclesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllCirclesVars.serializer,
        json,
      );
}

abstract class GGetCircleVars
    implements Built<GGetCircleVars, GGetCircleVarsBuilder> {
  GGetCircleVars._();

  factory GGetCircleVars([void Function(GGetCircleVarsBuilder b) updates]) =
      _$GGetCircleVars;

  String get id;
  static Serializer<GGetCircleVars> get serializer =>
      _$gGetCircleVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleVars.serializer,
        json,
      );
}

abstract class GGetCircleMembersVars
    implements Built<GGetCircleMembersVars, GGetCircleMembersVarsBuilder> {
  GGetCircleMembersVars._();

  factory GGetCircleMembersVars(
          [void Function(GGetCircleMembersVarsBuilder b) updates]) =
      _$GGetCircleMembersVars;

  String get circleId;
  static Serializer<GGetCircleMembersVars> get serializer =>
      _$gGetCircleMembersVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleMembersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleMembersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleMembersVars.serializer,
        json,
      );
}

abstract class GLeaveCircleVars
    implements Built<GLeaveCircleVars, GLeaveCircleVarsBuilder> {
  GLeaveCircleVars._();

  factory GLeaveCircleVars([void Function(GLeaveCircleVarsBuilder b) updates]) =
      _$GLeaveCircleVars;

  String get circleId;
  String get userId;
  static Serializer<GLeaveCircleVars> get serializer =>
      _$gLeaveCircleVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLeaveCircleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLeaveCircleVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLeaveCircleVars.serializer,
        json,
      );
}

abstract class GCreateCircleVars
    implements Built<GCreateCircleVars, GCreateCircleVarsBuilder> {
  GCreateCircleVars._();

  factory GCreateCircleVars(
          [void Function(GCreateCircleVarsBuilder b) updates]) =
      _$GCreateCircleVars;

  _i2.GCreateCircleInput get input;
  static Serializer<GCreateCircleVars> get serializer =>
      _$gCreateCircleVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCircleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCircleVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCircleVars.serializer,
        json,
      );
}

abstract class GAddCircleMemberVars
    implements Built<GAddCircleMemberVars, GAddCircleMemberVarsBuilder> {
  GAddCircleMemberVars._();

  factory GAddCircleMemberVars(
          [void Function(GAddCircleMemberVarsBuilder b) updates]) =
      _$GAddCircleMemberVars;

  _i2.GAddCircleMemberInput get input;
  static Serializer<GAddCircleMemberVars> get serializer =>
      _$gAddCircleMemberVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddCircleMemberVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddCircleMemberVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddCircleMemberVars.serializer,
        json,
      );
}

abstract class GChangeCircleNameVars
    implements Built<GChangeCircleNameVars, GChangeCircleNameVarsBuilder> {
  GChangeCircleNameVars._();

  factory GChangeCircleNameVars(
          [void Function(GChangeCircleNameVarsBuilder b) updates]) =
      _$GChangeCircleNameVars;

  _i2.GChangeCircleNameInput get input;
  static Serializer<GChangeCircleNameVars> get serializer =>
      _$gChangeCircleNameVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleNameVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleNameVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleNameVars.serializer,
        json,
      );
}

abstract class GChangeCircleDescriptionVars
    implements
        Built<GChangeCircleDescriptionVars,
            GChangeCircleDescriptionVarsBuilder> {
  GChangeCircleDescriptionVars._();

  factory GChangeCircleDescriptionVars(
          [void Function(GChangeCircleDescriptionVarsBuilder b) updates]) =
      _$GChangeCircleDescriptionVars;

  _i2.GChangeCircleDescriptionInput get input;
  static Serializer<GChangeCircleDescriptionVars> get serializer =>
      _$gChangeCircleDescriptionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleDescriptionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleDescriptionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleDescriptionVars.serializer,
        json,
      );
}

abstract class GDelegateCircleOwnerVars
    implements
        Built<GDelegateCircleOwnerVars, GDelegateCircleOwnerVarsBuilder> {
  GDelegateCircleOwnerVars._();

  factory GDelegateCircleOwnerVars(
          [void Function(GDelegateCircleOwnerVarsBuilder b) updates]) =
      _$GDelegateCircleOwnerVars;

  _i2.GDelegateCircleOwnerInput get input;
  static Serializer<GDelegateCircleOwnerVars> get serializer =>
      _$gDelegateCircleOwnerVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDelegateCircleOwnerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegateCircleOwnerVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDelegateCircleOwnerVars.serializer,
        json,
      );
}

abstract class GDeleteCircleVars
    implements Built<GDeleteCircleVars, GDeleteCircleVarsBuilder> {
  GDeleteCircleVars._();

  factory GDeleteCircleVars(
          [void Function(GDeleteCircleVarsBuilder b) updates]) =
      _$GDeleteCircleVars;

  _i2.GDeleteCircleInput get input;
  static Serializer<GDeleteCircleVars> get serializer =>
      _$gDeleteCircleVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteCircleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCircleVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteCircleVars.serializer,
        json,
      );
}
