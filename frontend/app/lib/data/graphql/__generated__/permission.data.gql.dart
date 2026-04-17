// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission.data.gql.g.dart';

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
