// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission.data.gql.g.dart';

abstract class GGetCirclePermissionData
    implements
        Built<GGetCirclePermissionData, GGetCirclePermissionDataBuilder> {
  GGetCirclePermissionData._();

  factory GGetCirclePermissionData(
          [void Function(GGetCirclePermissionDataBuilder b) updates]) =
      _$GGetCirclePermissionData;

  static void _initializeBuilder(GGetCirclePermissionDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCirclePermissionData_circle_permissions_by_pk?
      get circle_permissions_by_pk;
  static Serializer<GGetCirclePermissionData> get serializer =>
      _$gGetCirclePermissionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCirclePermissionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCirclePermissionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCirclePermissionData.serializer,
        json,
      );
}

abstract class GGetCirclePermissionData_circle_permissions_by_pk
    implements
        Built<GGetCirclePermissionData_circle_permissions_by_pk,
            GGetCirclePermissionData_circle_permissions_by_pkBuilder> {
  GGetCirclePermissionData_circle_permissions_by_pk._();

  factory GGetCirclePermissionData_circle_permissions_by_pk(
      [void Function(GGetCirclePermissionData_circle_permissions_by_pkBuilder b)
          updates]) = _$GGetCirclePermissionData_circle_permissions_by_pk;

  static void _initializeBuilder(
          GGetCirclePermissionData_circle_permissions_by_pkBuilder b) =>
      b..G__typename = 'circle_permissions';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get circle_uuid;
  bool get permission_board_creation;
  static Serializer<GGetCirclePermissionData_circle_permissions_by_pk>
      get serializer =>
          _$gGetCirclePermissionDataCirclePermissionsByPkSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCirclePermissionData_circle_permissions_by_pk.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCirclePermissionData_circle_permissions_by_pk? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCirclePermissionData_circle_permissions_by_pk.serializer,
        json,
      );
}

abstract class GChangeBoardCreationPermissionData
    implements
        Built<GChangeBoardCreationPermissionData,
            GChangeBoardCreationPermissionDataBuilder> {
  GChangeBoardCreationPermissionData._();

  factory GChangeBoardCreationPermissionData(
      [void Function(GChangeBoardCreationPermissionDataBuilder b)
          updates]) = _$GChangeBoardCreationPermissionData;

  static void _initializeBuilder(GChangeBoardCreationPermissionDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get change_board_creation_permission;
  static Serializer<GChangeBoardCreationPermissionData> get serializer =>
      _$gChangeBoardCreationPermissionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardCreationPermissionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardCreationPermissionData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardCreationPermissionData.serializer,
        json,
      );
}
