// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remote_schema_types.schema.gql.g.dart';

abstract class GAddBoardPostInput
    implements Built<GAddBoardPostInput, GAddBoardPostInputBuilder> {
  GAddBoardPostInput._();

  factory GAddBoardPostInput(
          [void Function(GAddBoardPostInputBuilder b) updates]) =
      _$GAddBoardPostInput;

  String get board_id;
  String get circle_id;
  String get content;
  String get user_id;
  static Serializer<GAddBoardPostInput> get serializer =>
      _$gAddBoardPostInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddBoardPostInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddBoardPostInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddBoardPostInput.serializer,
        json,
      );
}

abstract class GAddCircleMemberInput
    implements Built<GAddCircleMemberInput, GAddCircleMemberInputBuilder> {
  GAddCircleMemberInput._();

  factory GAddCircleMemberInput(
          [void Function(GAddCircleMemberInputBuilder b) updates]) =
      _$GAddCircleMemberInput;

  String get circle_id;
  String get new_member_id;
  static Serializer<GAddCircleMemberInput> get serializer =>
      _$gAddCircleMemberInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddCircleMemberInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddCircleMemberInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddCircleMemberInput.serializer,
        json,
      );
}

abstract class GChangeBoardCreationPermissionInput
    implements
        Built<GChangeBoardCreationPermissionInput,
            GChangeBoardCreationPermissionInputBuilder> {
  GChangeBoardCreationPermissionInput._();

  factory GChangeBoardCreationPermissionInput(
      [void Function(GChangeBoardCreationPermissionInputBuilder b)
          updates]) = _$GChangeBoardCreationPermissionInput;

  bool get allowed;
  String get circle_id;
  static Serializer<GChangeBoardCreationPermissionInput> get serializer =>
      _$gChangeBoardCreationPermissionInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardCreationPermissionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardCreationPermissionInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardCreationPermissionInput.serializer,
        json,
      );
}

abstract class GChangeBoardStatusInput
    implements Built<GChangeBoardStatusInput, GChangeBoardStatusInputBuilder> {
  GChangeBoardStatusInput._();

  factory GChangeBoardStatusInput(
          [void Function(GChangeBoardStatusInputBuilder b) updates]) =
      _$GChangeBoardStatusInput;

  String get board_id;
  String get circle_id;
  int get new_status;
  static Serializer<GChangeBoardStatusInput> get serializer =>
      _$gChangeBoardStatusInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardStatusInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardStatusInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardStatusInput.serializer,
        json,
      );
}

abstract class GChangeBoardTopicInput
    implements Built<GChangeBoardTopicInput, GChangeBoardTopicInputBuilder> {
  GChangeBoardTopicInput._();

  factory GChangeBoardTopicInput(
          [void Function(GChangeBoardTopicInputBuilder b) updates]) =
      _$GChangeBoardTopicInput;

  String get board_id;
  String get circle_id;
  String get new_topic;
  static Serializer<GChangeBoardTopicInput> get serializer =>
      _$gChangeBoardTopicInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeBoardTopicInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardTopicInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeBoardTopicInput.serializer,
        json,
      );
}

abstract class GChangeCircleDescriptionInput
    implements
        Built<GChangeCircleDescriptionInput,
            GChangeCircleDescriptionInputBuilder> {
  GChangeCircleDescriptionInput._();

  factory GChangeCircleDescriptionInput(
          [void Function(GChangeCircleDescriptionInputBuilder b) updates]) =
      _$GChangeCircleDescriptionInput;

  String get circle_id;
  String get new_description;
  static Serializer<GChangeCircleDescriptionInput> get serializer =>
      _$gChangeCircleDescriptionInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleDescriptionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleDescriptionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleDescriptionInput.serializer,
        json,
      );
}

abstract class GChangeCircleNameInput
    implements Built<GChangeCircleNameInput, GChangeCircleNameInputBuilder> {
  GChangeCircleNameInput._();

  factory GChangeCircleNameInput(
          [void Function(GChangeCircleNameInputBuilder b) updates]) =
      _$GChangeCircleNameInput;

  String get circle_id;
  String get new_name;
  static Serializer<GChangeCircleNameInput> get serializer =>
      _$gChangeCircleNameInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleNameInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleNameInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleNameInput.serializer,
        json,
      );
}

abstract class GCreateBoardInput
    implements Built<GCreateBoardInput, GCreateBoardInputBuilder> {
  GCreateBoardInput._();

  factory GCreateBoardInput(
          [void Function(GCreateBoardInputBuilder b) updates]) =
      _$GCreateBoardInput;

  String get circle_id;
  String get topic;
  static Serializer<GCreateBoardInput> get serializer =>
      _$gCreateBoardInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBoardInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBoardInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBoardInput.serializer,
        json,
      );
}

abstract class GCreateCircleInput
    implements Built<GCreateCircleInput, GCreateCircleInputBuilder> {
  GCreateCircleInput._();

  factory GCreateCircleInput(
          [void Function(GCreateCircleInputBuilder b) updates]) =
      _$GCreateCircleInput;

  String get description;
  String get name;
  static Serializer<GCreateCircleInput> get serializer =>
      _$gCreateCircleInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCircleInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCircleInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCircleInput.serializer,
        json,
      );
}

abstract class GDelegateCircleOwnerInput
    implements
        Built<GDelegateCircleOwnerInput, GDelegateCircleOwnerInputBuilder> {
  GDelegateCircleOwnerInput._();

  factory GDelegateCircleOwnerInput(
          [void Function(GDelegateCircleOwnerInputBuilder b) updates]) =
      _$GDelegateCircleOwnerInput;

  String get circle_id;
  String get new_owner_id;
  static Serializer<GDelegateCircleOwnerInput> get serializer =>
      _$gDelegateCircleOwnerInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDelegateCircleOwnerInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegateCircleOwnerInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDelegateCircleOwnerInput.serializer,
        json,
      );
}

abstract class GDeleteBoardInput
    implements Built<GDeleteBoardInput, GDeleteBoardInputBuilder> {
  GDeleteBoardInput._();

  factory GDeleteBoardInput(
          [void Function(GDeleteBoardInputBuilder b) updates]) =
      _$GDeleteBoardInput;

  String get board_id;
  String get circle_id;
  static Serializer<GDeleteBoardInput> get serializer =>
      _$gDeleteBoardInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteBoardInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteBoardInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteBoardInput.serializer,
        json,
      );
}

abstract class GDeleteCircleInput
    implements Built<GDeleteCircleInput, GDeleteCircleInputBuilder> {
  GDeleteCircleInput._();

  factory GDeleteCircleInput(
          [void Function(GDeleteCircleInputBuilder b) updates]) =
      _$GDeleteCircleInput;

  String get circle_id;
  static Serializer<GDeleteCircleInput> get serializer =>
      _$gDeleteCircleInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteCircleInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCircleInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteCircleInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
