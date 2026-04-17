// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'circle.var.gql.g.dart';

abstract class GCreateCircleVars
    implements Built<GCreateCircleVars, GCreateCircleVarsBuilder> {
  GCreateCircleVars._();

  factory GCreateCircleVars(
          [void Function(GCreateCircleVarsBuilder b) updates]) =
      _$GCreateCircleVars;

  _i1.GCreateCircleInput get input;
  static Serializer<GCreateCircleVars> get serializer =>
      _$gCreateCircleVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateCircleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCircleVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
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

  _i1.GAddCircleMemberInput get input;
  static Serializer<GAddCircleMemberVars> get serializer =>
      _$gAddCircleMemberVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddCircleMemberVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddCircleMemberVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
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

  _i1.GChangeCircleNameInput get input;
  static Serializer<GChangeCircleNameVars> get serializer =>
      _$gChangeCircleNameVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GChangeCircleNameVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleNameVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
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

  _i1.GChangeCircleDescriptionInput get input;
  static Serializer<GChangeCircleDescriptionVars> get serializer =>
      _$gChangeCircleDescriptionVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GChangeCircleDescriptionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleDescriptionVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
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

  _i1.GDelegateCircleOwnerInput get input;
  static Serializer<GDelegateCircleOwnerVars> get serializer =>
      _$gDelegateCircleOwnerVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegateCircleOwnerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegateCircleOwnerVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
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

  _i1.GDeleteCircleInput get input;
  static Serializer<GDeleteCircleVars> get serializer =>
      _$gDeleteCircleVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDeleteCircleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCircleVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDeleteCircleVars.serializer,
        json,
      );
}
