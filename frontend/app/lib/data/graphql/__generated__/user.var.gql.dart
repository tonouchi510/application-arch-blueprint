// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.var.gql.g.dart';

abstract class GUpdateUserAttributesVars
    implements
        Built<GUpdateUserAttributesVars, GUpdateUserAttributesVarsBuilder> {
  GUpdateUserAttributesVars._();

  factory GUpdateUserAttributesVars(
          [void Function(GUpdateUserAttributesVarsBuilder b) updates]) =
      _$GUpdateUserAttributesVars;

  _i1.GUpdateUserAttributesInput get input;
  static Serializer<GUpdateUserAttributesVars> get serializer =>
      _$gUpdateUserAttributesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateUserAttributesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserAttributesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateUserAttributesVars.serializer,
        json,
      );
}

abstract class GDeleteUserVars
    implements Built<GDeleteUserVars, GDeleteUserVarsBuilder> {
  GDeleteUserVars._();

  factory GDeleteUserVars([void Function(GDeleteUserVarsBuilder b) updates]) =
      _$GDeleteUserVars;

  _i1.GDeleteUserInput get input;
  static Serializer<GDeleteUserVars> get serializer =>
      _$gDeleteUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDeleteUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDeleteUserVars.serializer,
        json,
      );
}
