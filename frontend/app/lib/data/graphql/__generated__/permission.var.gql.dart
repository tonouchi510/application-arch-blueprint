// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission.var.gql.g.dart';

abstract class GGetCirclePermissionVars
    implements
        Built<GGetCirclePermissionVars, GGetCirclePermissionVarsBuilder> {
  GGetCirclePermissionVars._();

  factory GGetCirclePermissionVars(
          [void Function(GGetCirclePermissionVarsBuilder b) updates]) =
      _$GGetCirclePermissionVars;

  String get circleId;
  static Serializer<GGetCirclePermissionVars> get serializer =>
      _$gGetCirclePermissionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCirclePermissionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCirclePermissionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCirclePermissionVars.serializer,
        json,
      );
}

abstract class GChangeBoardCreationPermissionVars
    implements
        Built<GChangeBoardCreationPermissionVars,
            GChangeBoardCreationPermissionVarsBuilder> {
  GChangeBoardCreationPermissionVars._();

  factory GChangeBoardCreationPermissionVars(
      [void Function(GChangeBoardCreationPermissionVarsBuilder b)
          updates]) = _$GChangeBoardCreationPermissionVars;

  _i2.GChangeBoardCreationPermissionInput get input;
  static Serializer<GChangeBoardCreationPermissionVars> get serializer =>
      _$gChangeBoardCreationPermissionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardCreationPermissionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardCreationPermissionVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardCreationPermissionVars.serializer,
        json,
      );
}
