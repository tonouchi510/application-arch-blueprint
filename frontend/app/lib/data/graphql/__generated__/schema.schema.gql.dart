// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

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

abstract class GBoolean_comparison_exp
    implements Built<GBoolean_comparison_exp, GBoolean_comparison_expBuilder> {
  GBoolean_comparison_exp._();

  factory GBoolean_comparison_exp(
          [void Function(GBoolean_comparison_expBuilder b) updates]) =
      _$GBoolean_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  bool? get G_eq;
  @BuiltValueField(wireName: '_gt')
  bool? get G_gt;
  @BuiltValueField(wireName: '_gte')
  bool? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<bool>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  bool? get G_lt;
  @BuiltValueField(wireName: '_lte')
  bool? get G_lte;
  @BuiltValueField(wireName: '_neq')
  bool? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<bool>? get G_nin;
  static Serializer<GBoolean_comparison_exp> get serializer =>
      _$gBooleanComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBoolean_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBoolean_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBoolean_comparison_exp.serializer,
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

abstract class GDeleteUserInput
    implements Built<GDeleteUserInput, GDeleteUserInputBuilder> {
  GDeleteUserInput._();

  factory GDeleteUserInput([void Function(GDeleteUserInputBuilder b) updates]) =
      _$GDeleteUserInput;

  String get uid;
  static Serializer<GDeleteUserInput> get serializer =>
      _$gDeleteUserInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteUserInput.serializer,
        json,
      );
}

abstract class GInt_comparison_exp
    implements Built<GInt_comparison_exp, GInt_comparison_expBuilder> {
  GInt_comparison_exp._();

  factory GInt_comparison_exp(
          [void Function(GInt_comparison_expBuilder b) updates]) =
      _$GInt_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  int? get G_eq;
  @BuiltValueField(wireName: '_gt')
  int? get G_gt;
  @BuiltValueField(wireName: '_gte')
  int? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<int>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  int? get G_lt;
  @BuiltValueField(wireName: '_lte')
  int? get G_lte;
  @BuiltValueField(wireName: '_neq')
  int? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<int>? get G_nin;
  static Serializer<GInt_comparison_exp> get serializer =>
      _$gIntComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInt_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GInt_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInt_comparison_exp.serializer,
        json,
      );
}

abstract class GString_comparison_exp
    implements Built<GString_comparison_exp, GString_comparison_expBuilder> {
  GString_comparison_exp._();

  factory GString_comparison_exp(
          [void Function(GString_comparison_expBuilder b) updates]) =
      _$GString_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_ilike')
  String? get G_ilike;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_iregex')
  String? get G_iregex;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_like')
  String? get G_like;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nilike')
  String? get G_nilike;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  @BuiltValueField(wireName: '_niregex')
  String? get G_niregex;
  @BuiltValueField(wireName: '_nlike')
  String? get G_nlike;
  @BuiltValueField(wireName: '_nregex')
  String? get G_nregex;
  @BuiltValueField(wireName: '_nsimilar')
  String? get G_nsimilar;
  @BuiltValueField(wireName: '_regex')
  String? get G_regex;
  @BuiltValueField(wireName: '_similar')
  String? get G_similar;
  static Serializer<GString_comparison_exp> get serializer =>
      _$gStringComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GString_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GString_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GString_comparison_exp.serializer,
        json,
      );
}

abstract class GUpdateUserAttributesInput
    implements
        Built<GUpdateUserAttributesInput, GUpdateUserAttributesInputBuilder> {
  GUpdateUserAttributesInput._();

  factory GUpdateUserAttributesInput(
          [void Function(GUpdateUserAttributesInputBuilder b) updates]) =
      _$GUpdateUserAttributesInput;

  String? get email;
  String? get name;
  String? get phone_number;
  String? get photo_url;
  static Serializer<GUpdateUserAttributesInput> get serializer =>
      _$gUpdateUserAttributesInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserAttributesInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserAttributesInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserAttributesInput.serializer,
        json,
      );
}

abstract class Gboards_aggregate_bool_exp
    implements
        Built<Gboards_aggregate_bool_exp, Gboards_aggregate_bool_expBuilder> {
  Gboards_aggregate_bool_exp._();

  factory Gboards_aggregate_bool_exp(
          [void Function(Gboards_aggregate_bool_expBuilder b) updates]) =
      _$Gboards_aggregate_bool_exp;

  Gboards_aggregate_bool_exp_count? get count;
  static Serializer<Gboards_aggregate_bool_exp> get serializer =>
      _$gboardsAggregateBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_aggregate_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class Gboards_aggregate_bool_exp_count
    implements
        Built<Gboards_aggregate_bool_exp_count,
            Gboards_aggregate_bool_exp_countBuilder> {
  Gboards_aggregate_bool_exp_count._();

  factory Gboards_aggregate_bool_exp_count(
          [void Function(Gboards_aggregate_bool_exp_countBuilder b) updates]) =
      _$Gboards_aggregate_bool_exp_count;

  BuiltList<Gboards_select_column>? get arguments;
  bool? get distinct;
  Gboards_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<Gboards_aggregate_bool_exp_count> get serializer =>
      _$gboardsAggregateBoolExpCountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class Gboards_aggregate_order_by
    implements
        Built<Gboards_aggregate_order_by, Gboards_aggregate_order_byBuilder> {
  Gboards_aggregate_order_by._();

  factory Gboards_aggregate_order_by(
          [void Function(Gboards_aggregate_order_byBuilder b) updates]) =
      _$Gboards_aggregate_order_by;

  Gboards_avg_order_by? get avg;
  Gorder_by? get count;
  Gboards_max_order_by? get max;
  Gboards_min_order_by? get min;
  Gboards_stddev_order_by? get stddev;
  Gboards_stddev_pop_order_by? get stddev_pop;
  Gboards_stddev_samp_order_by? get stddev_samp;
  Gboards_sum_order_by? get sum;
  Gboards_var_pop_order_by? get var_pop;
  Gboards_var_samp_order_by? get var_samp;
  Gboards_variance_order_by? get variance;
  static Serializer<Gboards_aggregate_order_by> get serializer =>
      _$gboardsAggregateOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_aggregate_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_aggregate_order_by.serializer,
        json,
      );
}

abstract class Gboards_arr_rel_insert_input
    implements
        Built<Gboards_arr_rel_insert_input,
            Gboards_arr_rel_insert_inputBuilder> {
  Gboards_arr_rel_insert_input._();

  factory Gboards_arr_rel_insert_input(
          [void Function(Gboards_arr_rel_insert_inputBuilder b) updates]) =
      _$Gboards_arr_rel_insert_input;

  BuiltList<Gboards_insert_input> get data;
  Gboards_on_conflict? get on_conflict;
  static Serializer<Gboards_arr_rel_insert_input> get serializer =>
      _$gboardsArrRelInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_arr_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class Gboards_avg_order_by
    implements Built<Gboards_avg_order_by, Gboards_avg_order_byBuilder> {
  Gboards_avg_order_by._();

  factory Gboards_avg_order_by(
          [void Function(Gboards_avg_order_byBuilder b) updates]) =
      _$Gboards_avg_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_avg_order_by> get serializer =>
      _$gboardsAvgOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_avg_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_avg_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_avg_order_by.serializer,
        json,
      );
}

abstract class Gboards_bool_exp
    implements Built<Gboards_bool_exp, Gboards_bool_expBuilder> {
  Gboards_bool_exp._();

  factory Gboards_bool_exp([void Function(Gboards_bool_expBuilder b) updates]) =
      _$Gboards_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gboards_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gboards_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gboards_bool_exp>? get G_or;
  Gcircles_bool_exp? get circle;
  Guuid_comparison_exp? get circle_uuid;
  Gtimestamptz_comparison_exp? get created_at;
  Gbpchar_comparison_exp? get owner_id;
  Gposts_bool_exp? get posts;
  Gposts_aggregate_bool_exp? get posts_aggregate;
  Gsmallint_comparison_exp? get status;
  GString_comparison_exp? get topic;
  Gtimestamptz_comparison_exp? get updated_at;
  Guuid_comparison_exp? get uuid;
  static Serializer<Gboards_bool_exp> get serializer =>
      _$gboardsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_bool_exp.serializer,
        json,
      );
}

class Gboards_constraint extends EnumClass {
  const Gboards_constraint._(String name) : super(name);

  static const Gboards_constraint boards_pkey = _$gboardsConstraintboards_pkey;

  static Serializer<Gboards_constraint> get serializer =>
      _$gboardsConstraintSerializer;

  static BuiltSet<Gboards_constraint> get values => _$gboardsConstraintValues;

  static Gboards_constraint valueOf(String name) =>
      _$gboardsConstraintValueOf(name);
}

abstract class Gboards_inc_input
    implements Built<Gboards_inc_input, Gboards_inc_inputBuilder> {
  Gboards_inc_input._();

  factory Gboards_inc_input(
          [void Function(Gboards_inc_inputBuilder b) updates]) =
      _$Gboards_inc_input;

  int? get status;
  static Serializer<Gboards_inc_input> get serializer =>
      _$gboardsIncInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_inc_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_inc_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_inc_input.serializer,
        json,
      );
}

abstract class Gboards_insert_input
    implements Built<Gboards_insert_input, Gboards_insert_inputBuilder> {
  Gboards_insert_input._();

  factory Gboards_insert_input(
          [void Function(Gboards_insert_inputBuilder b) updates]) =
      _$Gboards_insert_input;

  Gcircles_obj_rel_insert_input? get circle;
  String? get circle_uuid;
  String? get created_at;
  String? get owner_id;
  Gposts_arr_rel_insert_input? get posts;
  int? get status;
  String? get topic;
  String? get updated_at;
  String? get uuid;
  static Serializer<Gboards_insert_input> get serializer =>
      _$gboardsInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_insert_input.serializer,
        json,
      );
}

abstract class Gboards_max_order_by
    implements Built<Gboards_max_order_by, Gboards_max_order_byBuilder> {
  Gboards_max_order_by._();

  factory Gboards_max_order_by(
          [void Function(Gboards_max_order_byBuilder b) updates]) =
      _$Gboards_max_order_by;

  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get owner_id;
  Gorder_by? get status;
  Gorder_by? get topic;
  Gorder_by? get updated_at;
  Gorder_by? get uuid;
  static Serializer<Gboards_max_order_by> get serializer =>
      _$gboardsMaxOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_max_order_by.serializer,
        json,
      );
}

abstract class Gboards_min_order_by
    implements Built<Gboards_min_order_by, Gboards_min_order_byBuilder> {
  Gboards_min_order_by._();

  factory Gboards_min_order_by(
          [void Function(Gboards_min_order_byBuilder b) updates]) =
      _$Gboards_min_order_by;

  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get owner_id;
  Gorder_by? get status;
  Gorder_by? get topic;
  Gorder_by? get updated_at;
  Gorder_by? get uuid;
  static Serializer<Gboards_min_order_by> get serializer =>
      _$gboardsMinOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_min_order_by.serializer,
        json,
      );
}

abstract class Gboards_obj_rel_insert_input
    implements
        Built<Gboards_obj_rel_insert_input,
            Gboards_obj_rel_insert_inputBuilder> {
  Gboards_obj_rel_insert_input._();

  factory Gboards_obj_rel_insert_input(
          [void Function(Gboards_obj_rel_insert_inputBuilder b) updates]) =
      _$Gboards_obj_rel_insert_input;

  Gboards_insert_input get data;
  Gboards_on_conflict? get on_conflict;
  static Serializer<Gboards_obj_rel_insert_input> get serializer =>
      _$gboardsObjRelInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_obj_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_obj_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_obj_rel_insert_input.serializer,
        json,
      );
}

abstract class Gboards_on_conflict
    implements Built<Gboards_on_conflict, Gboards_on_conflictBuilder> {
  Gboards_on_conflict._();

  factory Gboards_on_conflict(
          [void Function(Gboards_on_conflictBuilder b) updates]) =
      _$Gboards_on_conflict;

  Gboards_constraint get constraint;
  BuiltList<Gboards_update_column> get update_columns;
  Gboards_bool_exp? get where;
  static Serializer<Gboards_on_conflict> get serializer =>
      _$gboardsOnConflictSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_on_conflict.serializer,
        json,
      );
}

abstract class Gboards_order_by
    implements Built<Gboards_order_by, Gboards_order_byBuilder> {
  Gboards_order_by._();

  factory Gboards_order_by([void Function(Gboards_order_byBuilder b) updates]) =
      _$Gboards_order_by;

  Gcircles_order_by? get circle;
  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get owner_id;
  Gposts_aggregate_order_by? get posts_aggregate;
  Gorder_by? get status;
  Gorder_by? get topic;
  Gorder_by? get updated_at;
  Gorder_by? get uuid;
  static Serializer<Gboards_order_by> get serializer =>
      _$gboardsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_order_by.serializer,
        json,
      );
}

abstract class Gboards_pk_columns_input
    implements
        Built<Gboards_pk_columns_input, Gboards_pk_columns_inputBuilder> {
  Gboards_pk_columns_input._();

  factory Gboards_pk_columns_input(
          [void Function(Gboards_pk_columns_inputBuilder b) updates]) =
      _$Gboards_pk_columns_input;

  String get uuid;
  static Serializer<Gboards_pk_columns_input> get serializer =>
      _$gboardsPkColumnsInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_pk_columns_input.serializer,
        json,
      );
}

class Gboards_select_column extends EnumClass {
  const Gboards_select_column._(String name) : super(name);

  static const Gboards_select_column circle_uuid =
      _$gboardsSelectColumncircle_uuid;

  static const Gboards_select_column created_at =
      _$gboardsSelectColumncreated_at;

  static const Gboards_select_column owner_id = _$gboardsSelectColumnowner_id;

  static const Gboards_select_column status = _$gboardsSelectColumnstatus;

  static const Gboards_select_column topic = _$gboardsSelectColumntopic;

  static const Gboards_select_column updated_at =
      _$gboardsSelectColumnupdated_at;

  static const Gboards_select_column uuid = _$gboardsSelectColumnuuid;

  static Serializer<Gboards_select_column> get serializer =>
      _$gboardsSelectColumnSerializer;

  static BuiltSet<Gboards_select_column> get values =>
      _$gboardsSelectColumnValues;

  static Gboards_select_column valueOf(String name) =>
      _$gboardsSelectColumnValueOf(name);
}

abstract class Gboards_set_input
    implements Built<Gboards_set_input, Gboards_set_inputBuilder> {
  Gboards_set_input._();

  factory Gboards_set_input(
          [void Function(Gboards_set_inputBuilder b) updates]) =
      _$Gboards_set_input;

  String? get circle_uuid;
  String? get created_at;
  String? get owner_id;
  int? get status;
  String? get topic;
  String? get updated_at;
  String? get uuid;
  static Serializer<Gboards_set_input> get serializer =>
      _$gboardsSetInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_set_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_set_input.serializer,
        json,
      );
}

abstract class Gboards_stddev_order_by
    implements Built<Gboards_stddev_order_by, Gboards_stddev_order_byBuilder> {
  Gboards_stddev_order_by._();

  factory Gboards_stddev_order_by(
          [void Function(Gboards_stddev_order_byBuilder b) updates]) =
      _$Gboards_stddev_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_stddev_order_by> get serializer =>
      _$gboardsStddevOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_stddev_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_stddev_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_stddev_order_by.serializer,
        json,
      );
}

abstract class Gboards_stddev_pop_order_by
    implements
        Built<Gboards_stddev_pop_order_by, Gboards_stddev_pop_order_byBuilder> {
  Gboards_stddev_pop_order_by._();

  factory Gboards_stddev_pop_order_by(
          [void Function(Gboards_stddev_pop_order_byBuilder b) updates]) =
      _$Gboards_stddev_pop_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_stddev_pop_order_by> get serializer =>
      _$gboardsStddevPopOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_stddev_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_stddev_pop_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_stddev_pop_order_by.serializer,
        json,
      );
}

abstract class Gboards_stddev_samp_order_by
    implements
        Built<Gboards_stddev_samp_order_by,
            Gboards_stddev_samp_order_byBuilder> {
  Gboards_stddev_samp_order_by._();

  factory Gboards_stddev_samp_order_by(
          [void Function(Gboards_stddev_samp_order_byBuilder b) updates]) =
      _$Gboards_stddev_samp_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_stddev_samp_order_by> get serializer =>
      _$gboardsStddevSampOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_stddev_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_stddev_samp_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_stddev_samp_order_by.serializer,
        json,
      );
}

abstract class Gboards_stream_cursor_input
    implements
        Built<Gboards_stream_cursor_input, Gboards_stream_cursor_inputBuilder> {
  Gboards_stream_cursor_input._();

  factory Gboards_stream_cursor_input(
          [void Function(Gboards_stream_cursor_inputBuilder b) updates]) =
      _$Gboards_stream_cursor_input;

  Gboards_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gboards_stream_cursor_input> get serializer =>
      _$gboardsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gboards_stream_cursor_value_input
    implements
        Built<Gboards_stream_cursor_value_input,
            Gboards_stream_cursor_value_inputBuilder> {
  Gboards_stream_cursor_value_input._();

  factory Gboards_stream_cursor_value_input(
          [void Function(Gboards_stream_cursor_value_inputBuilder b) updates]) =
      _$Gboards_stream_cursor_value_input;

  String? get circle_uuid;
  String? get created_at;
  String? get owner_id;
  int? get status;
  String? get topic;
  String? get updated_at;
  String? get uuid;
  static Serializer<Gboards_stream_cursor_value_input> get serializer =>
      _$gboardsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_stream_cursor_value_input.serializer,
        json,
      );
}

abstract class Gboards_sum_order_by
    implements Built<Gboards_sum_order_by, Gboards_sum_order_byBuilder> {
  Gboards_sum_order_by._();

  factory Gboards_sum_order_by(
          [void Function(Gboards_sum_order_byBuilder b) updates]) =
      _$Gboards_sum_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_sum_order_by> get serializer =>
      _$gboardsSumOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_sum_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_sum_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_sum_order_by.serializer,
        json,
      );
}

class Gboards_update_column extends EnumClass {
  const Gboards_update_column._(String name) : super(name);

  static const Gboards_update_column circle_uuid =
      _$gboardsUpdateColumncircle_uuid;

  static const Gboards_update_column created_at =
      _$gboardsUpdateColumncreated_at;

  static const Gboards_update_column owner_id = _$gboardsUpdateColumnowner_id;

  static const Gboards_update_column status = _$gboardsUpdateColumnstatus;

  static const Gboards_update_column topic = _$gboardsUpdateColumntopic;

  static const Gboards_update_column updated_at =
      _$gboardsUpdateColumnupdated_at;

  static const Gboards_update_column uuid = _$gboardsUpdateColumnuuid;

  static Serializer<Gboards_update_column> get serializer =>
      _$gboardsUpdateColumnSerializer;

  static BuiltSet<Gboards_update_column> get values =>
      _$gboardsUpdateColumnValues;

  static Gboards_update_column valueOf(String name) =>
      _$gboardsUpdateColumnValueOf(name);
}

abstract class Gboards_updates
    implements Built<Gboards_updates, Gboards_updatesBuilder> {
  Gboards_updates._();

  factory Gboards_updates([void Function(Gboards_updatesBuilder b) updates]) =
      _$Gboards_updates;

  @BuiltValueField(wireName: '_inc')
  Gboards_inc_input? get G_inc;
  @BuiltValueField(wireName: '_set')
  Gboards_set_input? get G_set;
  Gboards_bool_exp get where;
  static Serializer<Gboards_updates> get serializer =>
      _$gboardsUpdatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_updates.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_updates.serializer,
        json,
      );
}

abstract class Gboards_var_pop_order_by
    implements
        Built<Gboards_var_pop_order_by, Gboards_var_pop_order_byBuilder> {
  Gboards_var_pop_order_by._();

  factory Gboards_var_pop_order_by(
          [void Function(Gboards_var_pop_order_byBuilder b) updates]) =
      _$Gboards_var_pop_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_var_pop_order_by> get serializer =>
      _$gboardsVarPopOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_var_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_var_pop_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_var_pop_order_by.serializer,
        json,
      );
}

abstract class Gboards_var_samp_order_by
    implements
        Built<Gboards_var_samp_order_by, Gboards_var_samp_order_byBuilder> {
  Gboards_var_samp_order_by._();

  factory Gboards_var_samp_order_by(
          [void Function(Gboards_var_samp_order_byBuilder b) updates]) =
      _$Gboards_var_samp_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_var_samp_order_by> get serializer =>
      _$gboardsVarSampOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_var_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_var_samp_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_var_samp_order_by.serializer,
        json,
      );
}

abstract class Gboards_variance_order_by
    implements
        Built<Gboards_variance_order_by, Gboards_variance_order_byBuilder> {
  Gboards_variance_order_by._();

  factory Gboards_variance_order_by(
          [void Function(Gboards_variance_order_byBuilder b) updates]) =
      _$Gboards_variance_order_by;

  Gorder_by? get status;
  static Serializer<Gboards_variance_order_by> get serializer =>
      _$gboardsVarianceOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gboards_variance_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gboards_variance_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gboards_variance_order_by.serializer,
        json,
      );
}

abstract class Gbpchar_comparison_exp
    implements Built<Gbpchar_comparison_exp, Gbpchar_comparison_expBuilder> {
  Gbpchar_comparison_exp._();

  factory Gbpchar_comparison_exp(
          [void Function(Gbpchar_comparison_expBuilder b) updates]) =
      _$Gbpchar_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_ilike')
  String? get G_ilike;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_iregex')
  String? get G_iregex;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_like')
  String? get G_like;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nilike')
  String? get G_nilike;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  @BuiltValueField(wireName: '_niregex')
  String? get G_niregex;
  @BuiltValueField(wireName: '_nlike')
  String? get G_nlike;
  @BuiltValueField(wireName: '_nregex')
  String? get G_nregex;
  @BuiltValueField(wireName: '_nsimilar')
  String? get G_nsimilar;
  @BuiltValueField(wireName: '_regex')
  String? get G_regex;
  @BuiltValueField(wireName: '_similar')
  String? get G_similar;
  static Serializer<Gbpchar_comparison_exp> get serializer =>
      _$gbpcharComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbpchar_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gbpchar_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbpchar_comparison_exp.serializer,
        json,
      );
}

abstract class Gcircle_members_aggregate_bool_exp
    implements
        Built<Gcircle_members_aggregate_bool_exp,
            Gcircle_members_aggregate_bool_expBuilder> {
  Gcircle_members_aggregate_bool_exp._();

  factory Gcircle_members_aggregate_bool_exp(
      [void Function(Gcircle_members_aggregate_bool_expBuilder b)
          updates]) = _$Gcircle_members_aggregate_bool_exp;

  Gcircle_members_aggregate_bool_exp_count? get count;
  static Serializer<Gcircle_members_aggregate_bool_exp> get serializer =>
      _$gcircleMembersAggregateBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_aggregate_bool_exp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class Gcircle_members_aggregate_bool_exp_count
    implements
        Built<Gcircle_members_aggregate_bool_exp_count,
            Gcircle_members_aggregate_bool_exp_countBuilder> {
  Gcircle_members_aggregate_bool_exp_count._();

  factory Gcircle_members_aggregate_bool_exp_count(
      [void Function(Gcircle_members_aggregate_bool_exp_countBuilder b)
          updates]) = _$Gcircle_members_aggregate_bool_exp_count;

  BuiltList<Gcircle_members_select_column>? get arguments;
  bool? get distinct;
  Gcircle_members_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<Gcircle_members_aggregate_bool_exp_count> get serializer =>
      _$gcircleMembersAggregateBoolExpCountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class Gcircle_members_aggregate_order_by
    implements
        Built<Gcircle_members_aggregate_order_by,
            Gcircle_members_aggregate_order_byBuilder> {
  Gcircle_members_aggregate_order_by._();

  factory Gcircle_members_aggregate_order_by(
      [void Function(Gcircle_members_aggregate_order_byBuilder b)
          updates]) = _$Gcircle_members_aggregate_order_by;

  Gorder_by? get count;
  Gcircle_members_max_order_by? get max;
  Gcircle_members_min_order_by? get min;
  static Serializer<Gcircle_members_aggregate_order_by> get serializer =>
      _$gcircleMembersAggregateOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_aggregate_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_aggregate_order_by.serializer,
        json,
      );
}

abstract class Gcircle_members_arr_rel_insert_input
    implements
        Built<Gcircle_members_arr_rel_insert_input,
            Gcircle_members_arr_rel_insert_inputBuilder> {
  Gcircle_members_arr_rel_insert_input._();

  factory Gcircle_members_arr_rel_insert_input(
      [void Function(Gcircle_members_arr_rel_insert_inputBuilder b)
          updates]) = _$Gcircle_members_arr_rel_insert_input;

  BuiltList<Gcircle_members_insert_input> get data;
  Gcircle_members_on_conflict? get on_conflict;
  static Serializer<Gcircle_members_arr_rel_insert_input> get serializer =>
      _$gcircleMembersArrRelInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_arr_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class Gcircle_members_bool_exp
    implements
        Built<Gcircle_members_bool_exp, Gcircle_members_bool_expBuilder> {
  Gcircle_members_bool_exp._();

  factory Gcircle_members_bool_exp(
          [void Function(Gcircle_members_bool_expBuilder b) updates]) =
      _$Gcircle_members_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gcircle_members_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gcircle_members_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gcircle_members_bool_exp>? get G_or;
  Gcircles_bool_exp? get circle;
  Guuid_comparison_exp? get circle_uuid;
  Gtimestamptz_comparison_exp? get created_at;
  Gdate_comparison_exp? get joined_date;
  Gtimestamptz_comparison_exp? get updated_at;
  Gbpchar_comparison_exp? get user_id;
  Guuid_comparison_exp? get uuid;
  static Serializer<Gcircle_members_bool_exp> get serializer =>
      _$gcircleMembersBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_bool_exp.serializer,
        json,
      );
}

class Gcircle_members_constraint extends EnumClass {
  const Gcircle_members_constraint._(String name) : super(name);

  static const Gcircle_members_constraint
      circle_members_circle_uuid_user_id_key =
      _$gcircleMembersConstraintcircle_members_circle_uuid_user_id_key;

  static const Gcircle_members_constraint circle_members_pkey =
      _$gcircleMembersConstraintcircle_members_pkey;

  static Serializer<Gcircle_members_constraint> get serializer =>
      _$gcircleMembersConstraintSerializer;

  static BuiltSet<Gcircle_members_constraint> get values =>
      _$gcircleMembersConstraintValues;

  static Gcircle_members_constraint valueOf(String name) =>
      _$gcircleMembersConstraintValueOf(name);
}

abstract class Gcircle_members_insert_input
    implements
        Built<Gcircle_members_insert_input,
            Gcircle_members_insert_inputBuilder> {
  Gcircle_members_insert_input._();

  factory Gcircle_members_insert_input(
          [void Function(Gcircle_members_insert_inputBuilder b) updates]) =
      _$Gcircle_members_insert_input;

  Gcircles_obj_rel_insert_input? get circle;
  String? get circle_uuid;
  String? get created_at;
  Gdate? get joined_date;
  String? get updated_at;
  String? get user_id;
  String? get uuid;
  static Serializer<Gcircle_members_insert_input> get serializer =>
      _$gcircleMembersInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_insert_input.serializer,
        json,
      );
}

abstract class Gcircle_members_max_order_by
    implements
        Built<Gcircle_members_max_order_by,
            Gcircle_members_max_order_byBuilder> {
  Gcircle_members_max_order_by._();

  factory Gcircle_members_max_order_by(
          [void Function(Gcircle_members_max_order_byBuilder b) updates]) =
      _$Gcircle_members_max_order_by;

  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get joined_date;
  Gorder_by? get updated_at;
  Gorder_by? get user_id;
  Gorder_by? get uuid;
  static Serializer<Gcircle_members_max_order_by> get serializer =>
      _$gcircleMembersMaxOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_max_order_by.serializer,
        json,
      );
}

abstract class Gcircle_members_min_order_by
    implements
        Built<Gcircle_members_min_order_by,
            Gcircle_members_min_order_byBuilder> {
  Gcircle_members_min_order_by._();

  factory Gcircle_members_min_order_by(
          [void Function(Gcircle_members_min_order_byBuilder b) updates]) =
      _$Gcircle_members_min_order_by;

  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get joined_date;
  Gorder_by? get updated_at;
  Gorder_by? get user_id;
  Gorder_by? get uuid;
  static Serializer<Gcircle_members_min_order_by> get serializer =>
      _$gcircleMembersMinOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_min_order_by.serializer,
        json,
      );
}

abstract class Gcircle_members_on_conflict
    implements
        Built<Gcircle_members_on_conflict, Gcircle_members_on_conflictBuilder> {
  Gcircle_members_on_conflict._();

  factory Gcircle_members_on_conflict(
          [void Function(Gcircle_members_on_conflictBuilder b) updates]) =
      _$Gcircle_members_on_conflict;

  Gcircle_members_constraint get constraint;
  BuiltList<Gcircle_members_update_column> get update_columns;
  Gcircle_members_bool_exp? get where;
  static Serializer<Gcircle_members_on_conflict> get serializer =>
      _$gcircleMembersOnConflictSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_on_conflict.serializer,
        json,
      );
}

abstract class Gcircle_members_order_by
    implements
        Built<Gcircle_members_order_by, Gcircle_members_order_byBuilder> {
  Gcircle_members_order_by._();

  factory Gcircle_members_order_by(
          [void Function(Gcircle_members_order_byBuilder b) updates]) =
      _$Gcircle_members_order_by;

  Gcircles_order_by? get circle;
  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get joined_date;
  Gorder_by? get updated_at;
  Gorder_by? get user_id;
  Gorder_by? get uuid;
  static Serializer<Gcircle_members_order_by> get serializer =>
      _$gcircleMembersOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_order_by.serializer,
        json,
      );
}

abstract class Gcircle_members_pk_columns_input
    implements
        Built<Gcircle_members_pk_columns_input,
            Gcircle_members_pk_columns_inputBuilder> {
  Gcircle_members_pk_columns_input._();

  factory Gcircle_members_pk_columns_input(
          [void Function(Gcircle_members_pk_columns_inputBuilder b) updates]) =
      _$Gcircle_members_pk_columns_input;

  String get uuid;
  static Serializer<Gcircle_members_pk_columns_input> get serializer =>
      _$gcircleMembersPkColumnsInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_pk_columns_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_pk_columns_input.serializer,
        json,
      );
}

class Gcircle_members_select_column extends EnumClass {
  const Gcircle_members_select_column._(String name) : super(name);

  static const Gcircle_members_select_column circle_uuid =
      _$gcircleMembersSelectColumncircle_uuid;

  static const Gcircle_members_select_column created_at =
      _$gcircleMembersSelectColumncreated_at;

  static const Gcircle_members_select_column joined_date =
      _$gcircleMembersSelectColumnjoined_date;

  static const Gcircle_members_select_column updated_at =
      _$gcircleMembersSelectColumnupdated_at;

  static const Gcircle_members_select_column user_id =
      _$gcircleMembersSelectColumnuser_id;

  static const Gcircle_members_select_column uuid =
      _$gcircleMembersSelectColumnuuid;

  static Serializer<Gcircle_members_select_column> get serializer =>
      _$gcircleMembersSelectColumnSerializer;

  static BuiltSet<Gcircle_members_select_column> get values =>
      _$gcircleMembersSelectColumnValues;

  static Gcircle_members_select_column valueOf(String name) =>
      _$gcircleMembersSelectColumnValueOf(name);
}

abstract class Gcircle_members_set_input
    implements
        Built<Gcircle_members_set_input, Gcircle_members_set_inputBuilder> {
  Gcircle_members_set_input._();

  factory Gcircle_members_set_input(
          [void Function(Gcircle_members_set_inputBuilder b) updates]) =
      _$Gcircle_members_set_input;

  String? get circle_uuid;
  String? get created_at;
  Gdate? get joined_date;
  String? get updated_at;
  String? get user_id;
  String? get uuid;
  static Serializer<Gcircle_members_set_input> get serializer =>
      _$gcircleMembersSetInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_set_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_set_input.serializer,
        json,
      );
}

abstract class Gcircle_members_stream_cursor_input
    implements
        Built<Gcircle_members_stream_cursor_input,
            Gcircle_members_stream_cursor_inputBuilder> {
  Gcircle_members_stream_cursor_input._();

  factory Gcircle_members_stream_cursor_input(
      [void Function(Gcircle_members_stream_cursor_inputBuilder b)
          updates]) = _$Gcircle_members_stream_cursor_input;

  Gcircle_members_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gcircle_members_stream_cursor_input> get serializer =>
      _$gcircleMembersStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gcircle_members_stream_cursor_value_input
    implements
        Built<Gcircle_members_stream_cursor_value_input,
            Gcircle_members_stream_cursor_value_inputBuilder> {
  Gcircle_members_stream_cursor_value_input._();

  factory Gcircle_members_stream_cursor_value_input(
      [void Function(Gcircle_members_stream_cursor_value_inputBuilder b)
          updates]) = _$Gcircle_members_stream_cursor_value_input;

  String? get circle_uuid;
  String? get created_at;
  Gdate? get joined_date;
  String? get updated_at;
  String? get user_id;
  String? get uuid;
  static Serializer<Gcircle_members_stream_cursor_value_input> get serializer =>
      _$gcircleMembersStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_stream_cursor_value_input.serializer,
        json,
      );
}

class Gcircle_members_update_column extends EnumClass {
  const Gcircle_members_update_column._(String name) : super(name);

  static const Gcircle_members_update_column circle_uuid =
      _$gcircleMembersUpdateColumncircle_uuid;

  static const Gcircle_members_update_column created_at =
      _$gcircleMembersUpdateColumncreated_at;

  static const Gcircle_members_update_column joined_date =
      _$gcircleMembersUpdateColumnjoined_date;

  static const Gcircle_members_update_column updated_at =
      _$gcircleMembersUpdateColumnupdated_at;

  static const Gcircle_members_update_column user_id =
      _$gcircleMembersUpdateColumnuser_id;

  static const Gcircle_members_update_column uuid =
      _$gcircleMembersUpdateColumnuuid;

  static Serializer<Gcircle_members_update_column> get serializer =>
      _$gcircleMembersUpdateColumnSerializer;

  static BuiltSet<Gcircle_members_update_column> get values =>
      _$gcircleMembersUpdateColumnValues;

  static Gcircle_members_update_column valueOf(String name) =>
      _$gcircleMembersUpdateColumnValueOf(name);
}

abstract class Gcircle_members_updates
    implements Built<Gcircle_members_updates, Gcircle_members_updatesBuilder> {
  Gcircle_members_updates._();

  factory Gcircle_members_updates(
          [void Function(Gcircle_members_updatesBuilder b) updates]) =
      _$Gcircle_members_updates;

  @BuiltValueField(wireName: '_set')
  Gcircle_members_set_input? get G_set;
  Gcircle_members_bool_exp get where;
  static Serializer<Gcircle_members_updates> get serializer =>
      _$gcircleMembersUpdatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_members_updates.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_members_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_members_updates.serializer,
        json,
      );
}

abstract class Gcircle_permissions_aggregate_bool_exp
    implements
        Built<Gcircle_permissions_aggregate_bool_exp,
            Gcircle_permissions_aggregate_bool_expBuilder> {
  Gcircle_permissions_aggregate_bool_exp._();

  factory Gcircle_permissions_aggregate_bool_exp(
      [void Function(Gcircle_permissions_aggregate_bool_expBuilder b)
          updates]) = _$Gcircle_permissions_aggregate_bool_exp;

  Gcircle_permissions_aggregate_bool_exp_bool_and? get bool_and;
  Gcircle_permissions_aggregate_bool_exp_bool_or? get bool_or;
  Gcircle_permissions_aggregate_bool_exp_count? get count;
  static Serializer<Gcircle_permissions_aggregate_bool_exp> get serializer =>
      _$gcirclePermissionsAggregateBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_aggregate_bool_exp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class Gcircle_permissions_aggregate_bool_exp_bool_and
    implements
        Built<Gcircle_permissions_aggregate_bool_exp_bool_and,
            Gcircle_permissions_aggregate_bool_exp_bool_andBuilder> {
  Gcircle_permissions_aggregate_bool_exp_bool_and._();

  factory Gcircle_permissions_aggregate_bool_exp_bool_and(
      [void Function(Gcircle_permissions_aggregate_bool_exp_bool_andBuilder b)
          updates]) = _$Gcircle_permissions_aggregate_bool_exp_bool_and;

  Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns
      get arguments;
  bool? get distinct;
  Gcircle_permissions_bool_exp? get filter;
  GBoolean_comparison_exp get predicate;
  static Serializer<Gcircle_permissions_aggregate_bool_exp_bool_and>
      get serializer => _$gcirclePermissionsAggregateBoolExpBoolAndSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_aggregate_bool_exp_bool_and.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_aggregate_bool_exp_bool_and? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_aggregate_bool_exp_bool_and.serializer,
        json,
      );
}

abstract class Gcircle_permissions_aggregate_bool_exp_bool_or
    implements
        Built<Gcircle_permissions_aggregate_bool_exp_bool_or,
            Gcircle_permissions_aggregate_bool_exp_bool_orBuilder> {
  Gcircle_permissions_aggregate_bool_exp_bool_or._();

  factory Gcircle_permissions_aggregate_bool_exp_bool_or(
      [void Function(Gcircle_permissions_aggregate_bool_exp_bool_orBuilder b)
          updates]) = _$Gcircle_permissions_aggregate_bool_exp_bool_or;

  Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns
      get arguments;
  bool? get distinct;
  Gcircle_permissions_bool_exp? get filter;
  GBoolean_comparison_exp get predicate;
  static Serializer<Gcircle_permissions_aggregate_bool_exp_bool_or>
      get serializer => _$gcirclePermissionsAggregateBoolExpBoolOrSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_aggregate_bool_exp_bool_or.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_aggregate_bool_exp_bool_or? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_aggregate_bool_exp_bool_or.serializer,
        json,
      );
}

abstract class Gcircle_permissions_aggregate_bool_exp_count
    implements
        Built<Gcircle_permissions_aggregate_bool_exp_count,
            Gcircle_permissions_aggregate_bool_exp_countBuilder> {
  Gcircle_permissions_aggregate_bool_exp_count._();

  factory Gcircle_permissions_aggregate_bool_exp_count(
      [void Function(Gcircle_permissions_aggregate_bool_exp_countBuilder b)
          updates]) = _$Gcircle_permissions_aggregate_bool_exp_count;

  BuiltList<Gcircle_permissions_select_column>? get arguments;
  bool? get distinct;
  Gcircle_permissions_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<Gcircle_permissions_aggregate_bool_exp_count>
      get serializer => _$gcirclePermissionsAggregateBoolExpCountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class Gcircle_permissions_aggregate_order_by
    implements
        Built<Gcircle_permissions_aggregate_order_by,
            Gcircle_permissions_aggregate_order_byBuilder> {
  Gcircle_permissions_aggregate_order_by._();

  factory Gcircle_permissions_aggregate_order_by(
      [void Function(Gcircle_permissions_aggregate_order_byBuilder b)
          updates]) = _$Gcircle_permissions_aggregate_order_by;

  Gorder_by? get count;
  Gcircle_permissions_max_order_by? get max;
  Gcircle_permissions_min_order_by? get min;
  static Serializer<Gcircle_permissions_aggregate_order_by> get serializer =>
      _$gcirclePermissionsAggregateOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_aggregate_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_aggregate_order_by.serializer,
        json,
      );
}

abstract class Gcircle_permissions_arr_rel_insert_input
    implements
        Built<Gcircle_permissions_arr_rel_insert_input,
            Gcircle_permissions_arr_rel_insert_inputBuilder> {
  Gcircle_permissions_arr_rel_insert_input._();

  factory Gcircle_permissions_arr_rel_insert_input(
      [void Function(Gcircle_permissions_arr_rel_insert_inputBuilder b)
          updates]) = _$Gcircle_permissions_arr_rel_insert_input;

  BuiltList<Gcircle_permissions_insert_input> get data;
  Gcircle_permissions_on_conflict? get on_conflict;
  static Serializer<Gcircle_permissions_arr_rel_insert_input> get serializer =>
      _$gcirclePermissionsArrRelInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_arr_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class Gcircle_permissions_bool_exp
    implements
        Built<Gcircle_permissions_bool_exp,
            Gcircle_permissions_bool_expBuilder> {
  Gcircle_permissions_bool_exp._();

  factory Gcircle_permissions_bool_exp(
          [void Function(Gcircle_permissions_bool_expBuilder b) updates]) =
      _$Gcircle_permissions_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gcircle_permissions_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gcircle_permissions_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gcircle_permissions_bool_exp>? get G_or;
  Gcircles_bool_exp? get circle;
  Guuid_comparison_exp? get circle_uuid;
  Gtimestamptz_comparison_exp? get created_at;
  GBoolean_comparison_exp? get permission_board_creation;
  GBoolean_comparison_exp? get permission_self_join;
  Gtimestamptz_comparison_exp? get updated_at;
  static Serializer<Gcircle_permissions_bool_exp> get serializer =>
      _$gcirclePermissionsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_bool_exp.serializer,
        json,
      );
}

class Gcircle_permissions_constraint extends EnumClass {
  const Gcircle_permissions_constraint._(String name) : super(name);

  static const Gcircle_permissions_constraint circle_permissions_pkey =
      _$gcirclePermissionsConstraintcircle_permissions_pkey;

  static Serializer<Gcircle_permissions_constraint> get serializer =>
      _$gcirclePermissionsConstraintSerializer;

  static BuiltSet<Gcircle_permissions_constraint> get values =>
      _$gcirclePermissionsConstraintValues;

  static Gcircle_permissions_constraint valueOf(String name) =>
      _$gcirclePermissionsConstraintValueOf(name);
}

abstract class Gcircle_permissions_insert_input
    implements
        Built<Gcircle_permissions_insert_input,
            Gcircle_permissions_insert_inputBuilder> {
  Gcircle_permissions_insert_input._();

  factory Gcircle_permissions_insert_input(
          [void Function(Gcircle_permissions_insert_inputBuilder b) updates]) =
      _$Gcircle_permissions_insert_input;

  Gcircles_obj_rel_insert_input? get circle;
  String? get circle_uuid;
  String? get created_at;
  bool? get permission_board_creation;
  bool? get permission_self_join;
  String? get updated_at;
  static Serializer<Gcircle_permissions_insert_input> get serializer =>
      _$gcirclePermissionsInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_insert_input.serializer,
        json,
      );
}

abstract class Gcircle_permissions_max_order_by
    implements
        Built<Gcircle_permissions_max_order_by,
            Gcircle_permissions_max_order_byBuilder> {
  Gcircle_permissions_max_order_by._();

  factory Gcircle_permissions_max_order_by(
          [void Function(Gcircle_permissions_max_order_byBuilder b) updates]) =
      _$Gcircle_permissions_max_order_by;

  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get updated_at;
  static Serializer<Gcircle_permissions_max_order_by> get serializer =>
      _$gcirclePermissionsMaxOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_max_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_max_order_by.serializer,
        json,
      );
}

abstract class Gcircle_permissions_min_order_by
    implements
        Built<Gcircle_permissions_min_order_by,
            Gcircle_permissions_min_order_byBuilder> {
  Gcircle_permissions_min_order_by._();

  factory Gcircle_permissions_min_order_by(
          [void Function(Gcircle_permissions_min_order_byBuilder b) updates]) =
      _$Gcircle_permissions_min_order_by;

  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get updated_at;
  static Serializer<Gcircle_permissions_min_order_by> get serializer =>
      _$gcirclePermissionsMinOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_min_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_min_order_by.serializer,
        json,
      );
}

abstract class Gcircle_permissions_on_conflict
    implements
        Built<Gcircle_permissions_on_conflict,
            Gcircle_permissions_on_conflictBuilder> {
  Gcircle_permissions_on_conflict._();

  factory Gcircle_permissions_on_conflict(
          [void Function(Gcircle_permissions_on_conflictBuilder b) updates]) =
      _$Gcircle_permissions_on_conflict;

  Gcircle_permissions_constraint get constraint;
  BuiltList<Gcircle_permissions_update_column> get update_columns;
  Gcircle_permissions_bool_exp? get where;
  static Serializer<Gcircle_permissions_on_conflict> get serializer =>
      _$gcirclePermissionsOnConflictSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_on_conflict.serializer,
        json,
      );
}

abstract class Gcircle_permissions_order_by
    implements
        Built<Gcircle_permissions_order_by,
            Gcircle_permissions_order_byBuilder> {
  Gcircle_permissions_order_by._();

  factory Gcircle_permissions_order_by(
          [void Function(Gcircle_permissions_order_byBuilder b) updates]) =
      _$Gcircle_permissions_order_by;

  Gcircles_order_by? get circle;
  Gorder_by? get circle_uuid;
  Gorder_by? get created_at;
  Gorder_by? get permission_board_creation;
  Gorder_by? get permission_self_join;
  Gorder_by? get updated_at;
  static Serializer<Gcircle_permissions_order_by> get serializer =>
      _$gcirclePermissionsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_order_by.serializer,
        json,
      );
}

abstract class Gcircle_permissions_pk_columns_input
    implements
        Built<Gcircle_permissions_pk_columns_input,
            Gcircle_permissions_pk_columns_inputBuilder> {
  Gcircle_permissions_pk_columns_input._();

  factory Gcircle_permissions_pk_columns_input(
      [void Function(Gcircle_permissions_pk_columns_inputBuilder b)
          updates]) = _$Gcircle_permissions_pk_columns_input;

  String get circle_uuid;
  static Serializer<Gcircle_permissions_pk_columns_input> get serializer =>
      _$gcirclePermissionsPkColumnsInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_pk_columns_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_pk_columns_input.serializer,
        json,
      );
}

class Gcircle_permissions_select_column extends EnumClass {
  const Gcircle_permissions_select_column._(String name) : super(name);

  static const Gcircle_permissions_select_column circle_uuid =
      _$gcirclePermissionsSelectColumncircle_uuid;

  static const Gcircle_permissions_select_column created_at =
      _$gcirclePermissionsSelectColumncreated_at;

  static const Gcircle_permissions_select_column permission_board_creation =
      _$gcirclePermissionsSelectColumnpermission_board_creation;

  static const Gcircle_permissions_select_column permission_self_join =
      _$gcirclePermissionsSelectColumnpermission_self_join;

  static const Gcircle_permissions_select_column updated_at =
      _$gcirclePermissionsSelectColumnupdated_at;

  static Serializer<Gcircle_permissions_select_column> get serializer =>
      _$gcirclePermissionsSelectColumnSerializer;

  static BuiltSet<Gcircle_permissions_select_column> get values =>
      _$gcirclePermissionsSelectColumnValues;

  static Gcircle_permissions_select_column valueOf(String name) =>
      _$gcirclePermissionsSelectColumnValueOf(name);
}

class Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns
    extends EnumClass {
  const Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns._(
      String name)
      : super(name);

  static const Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns
      permission_board_creation =
      _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolAndArgumentsColumnspermission_board_creation;

  static const Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns
      permission_self_join =
      _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolAndArgumentsColumnspermission_self_join;

  static Serializer<
          Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns>
      get serializer =>
          _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolAndArgumentsColumnsSerializer;

  static BuiltSet<
          Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns>
      get values =>
          _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolAndArgumentsColumnsValues;

  static Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns
      valueOf(String name) =>
          _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolAndArgumentsColumnsValueOf(
              name);
}

class Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns
    extends EnumClass {
  const Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns._(
      String name)
      : super(name);

  static const Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns
      permission_board_creation =
      _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolOrArgumentsColumnspermission_board_creation;

  static const Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns
      permission_self_join =
      _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolOrArgumentsColumnspermission_self_join;

  static Serializer<
          Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns>
      get serializer =>
          _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolOrArgumentsColumnsSerializer;

  static BuiltSet<
          Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns>
      get values =>
          _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolOrArgumentsColumnsValues;

  static Gcircle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns
      valueOf(String name) =>
          _$gcirclePermissionsSelectColumnCirclePermissionsAggregateBoolExpBoolOrArgumentsColumnsValueOf(
              name);
}

abstract class Gcircle_permissions_set_input
    implements
        Built<Gcircle_permissions_set_input,
            Gcircle_permissions_set_inputBuilder> {
  Gcircle_permissions_set_input._();

  factory Gcircle_permissions_set_input(
          [void Function(Gcircle_permissions_set_inputBuilder b) updates]) =
      _$Gcircle_permissions_set_input;

  String? get circle_uuid;
  String? get created_at;
  bool? get permission_board_creation;
  bool? get permission_self_join;
  String? get updated_at;
  static Serializer<Gcircle_permissions_set_input> get serializer =>
      _$gcirclePermissionsSetInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_set_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_set_input.serializer,
        json,
      );
}

abstract class Gcircle_permissions_stream_cursor_input
    implements
        Built<Gcircle_permissions_stream_cursor_input,
            Gcircle_permissions_stream_cursor_inputBuilder> {
  Gcircle_permissions_stream_cursor_input._();

  factory Gcircle_permissions_stream_cursor_input(
      [void Function(Gcircle_permissions_stream_cursor_inputBuilder b)
          updates]) = _$Gcircle_permissions_stream_cursor_input;

  Gcircle_permissions_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gcircle_permissions_stream_cursor_input> get serializer =>
      _$gcirclePermissionsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gcircle_permissions_stream_cursor_value_input
    implements
        Built<Gcircle_permissions_stream_cursor_value_input,
            Gcircle_permissions_stream_cursor_value_inputBuilder> {
  Gcircle_permissions_stream_cursor_value_input._();

  factory Gcircle_permissions_stream_cursor_value_input(
      [void Function(Gcircle_permissions_stream_cursor_value_inputBuilder b)
          updates]) = _$Gcircle_permissions_stream_cursor_value_input;

  String? get circle_uuid;
  String? get created_at;
  bool? get permission_board_creation;
  bool? get permission_self_join;
  String? get updated_at;
  static Serializer<Gcircle_permissions_stream_cursor_value_input>
      get serializer => _$gcirclePermissionsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_stream_cursor_value_input.serializer,
        json,
      );
}

class Gcircle_permissions_update_column extends EnumClass {
  const Gcircle_permissions_update_column._(String name) : super(name);

  static const Gcircle_permissions_update_column circle_uuid =
      _$gcirclePermissionsUpdateColumncircle_uuid;

  static const Gcircle_permissions_update_column created_at =
      _$gcirclePermissionsUpdateColumncreated_at;

  static const Gcircle_permissions_update_column permission_board_creation =
      _$gcirclePermissionsUpdateColumnpermission_board_creation;

  static const Gcircle_permissions_update_column permission_self_join =
      _$gcirclePermissionsUpdateColumnpermission_self_join;

  static const Gcircle_permissions_update_column updated_at =
      _$gcirclePermissionsUpdateColumnupdated_at;

  static Serializer<Gcircle_permissions_update_column> get serializer =>
      _$gcirclePermissionsUpdateColumnSerializer;

  static BuiltSet<Gcircle_permissions_update_column> get values =>
      _$gcirclePermissionsUpdateColumnValues;

  static Gcircle_permissions_update_column valueOf(String name) =>
      _$gcirclePermissionsUpdateColumnValueOf(name);
}

abstract class Gcircle_permissions_updates
    implements
        Built<Gcircle_permissions_updates, Gcircle_permissions_updatesBuilder> {
  Gcircle_permissions_updates._();

  factory Gcircle_permissions_updates(
          [void Function(Gcircle_permissions_updatesBuilder b) updates]) =
      _$Gcircle_permissions_updates;

  @BuiltValueField(wireName: '_set')
  Gcircle_permissions_set_input? get G_set;
  Gcircle_permissions_bool_exp get where;
  static Serializer<Gcircle_permissions_updates> get serializer =>
      _$gcirclePermissionsUpdatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircle_permissions_updates.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircle_permissions_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircle_permissions_updates.serializer,
        json,
      );
}

abstract class Gcircles_bool_exp
    implements Built<Gcircles_bool_exp, Gcircles_bool_expBuilder> {
  Gcircles_bool_exp._();

  factory Gcircles_bool_exp(
          [void Function(Gcircles_bool_expBuilder b) updates]) =
      _$Gcircles_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gcircles_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gcircles_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gcircles_bool_exp>? get G_or;
  Gboards_bool_exp? get boards;
  Gboards_aggregate_bool_exp? get boards_aggregate;
  Gcircle_members_bool_exp? get circle_members;
  Gcircle_members_aggregate_bool_exp? get circle_members_aggregate;
  Gcircle_permissions_bool_exp? get circle_permissions;
  Gcircle_permissions_aggregate_bool_exp? get circle_permissions_aggregate;
  Gtimestamptz_comparison_exp? get created_at;
  GString_comparison_exp? get description;
  GString_comparison_exp? get name;
  Gbpchar_comparison_exp? get owner_id;
  Gtimestamptz_comparison_exp? get updated_at;
  Guuid_comparison_exp? get uuid;
  static Serializer<Gcircles_bool_exp> get serializer =>
      _$gcirclesBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_bool_exp.serializer,
        json,
      );
}

class Gcircles_constraint extends EnumClass {
  const Gcircles_constraint._(String name) : super(name);

  static const Gcircles_constraint circles_pkey =
      _$gcirclesConstraintcircles_pkey;

  static Serializer<Gcircles_constraint> get serializer =>
      _$gcirclesConstraintSerializer;

  static BuiltSet<Gcircles_constraint> get values => _$gcirclesConstraintValues;

  static Gcircles_constraint valueOf(String name) =>
      _$gcirclesConstraintValueOf(name);
}

abstract class Gcircles_insert_input
    implements Built<Gcircles_insert_input, Gcircles_insert_inputBuilder> {
  Gcircles_insert_input._();

  factory Gcircles_insert_input(
          [void Function(Gcircles_insert_inputBuilder b) updates]) =
      _$Gcircles_insert_input;

  Gboards_arr_rel_insert_input? get boards;
  Gcircle_members_arr_rel_insert_input? get circle_members;
  Gcircle_permissions_arr_rel_insert_input? get circle_permissions;
  String? get created_at;
  String? get description;
  String? get name;
  String? get owner_id;
  String? get updated_at;
  String? get uuid;
  static Serializer<Gcircles_insert_input> get serializer =>
      _$gcirclesInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_insert_input.serializer,
        json,
      );
}

abstract class Gcircles_obj_rel_insert_input
    implements
        Built<Gcircles_obj_rel_insert_input,
            Gcircles_obj_rel_insert_inputBuilder> {
  Gcircles_obj_rel_insert_input._();

  factory Gcircles_obj_rel_insert_input(
          [void Function(Gcircles_obj_rel_insert_inputBuilder b) updates]) =
      _$Gcircles_obj_rel_insert_input;

  Gcircles_insert_input get data;
  Gcircles_on_conflict? get on_conflict;
  static Serializer<Gcircles_obj_rel_insert_input> get serializer =>
      _$gcirclesObjRelInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_obj_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_obj_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_obj_rel_insert_input.serializer,
        json,
      );
}

abstract class Gcircles_on_conflict
    implements Built<Gcircles_on_conflict, Gcircles_on_conflictBuilder> {
  Gcircles_on_conflict._();

  factory Gcircles_on_conflict(
          [void Function(Gcircles_on_conflictBuilder b) updates]) =
      _$Gcircles_on_conflict;

  Gcircles_constraint get constraint;
  BuiltList<Gcircles_update_column> get update_columns;
  Gcircles_bool_exp? get where;
  static Serializer<Gcircles_on_conflict> get serializer =>
      _$gcirclesOnConflictSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_on_conflict.serializer,
        json,
      );
}

abstract class Gcircles_order_by
    implements Built<Gcircles_order_by, Gcircles_order_byBuilder> {
  Gcircles_order_by._();

  factory Gcircles_order_by(
          [void Function(Gcircles_order_byBuilder b) updates]) =
      _$Gcircles_order_by;

  Gboards_aggregate_order_by? get boards_aggregate;
  Gcircle_members_aggregate_order_by? get circle_members_aggregate;
  Gcircle_permissions_aggregate_order_by? get circle_permissions_aggregate;
  Gorder_by? get created_at;
  Gorder_by? get description;
  Gorder_by? get name;
  Gorder_by? get owner_id;
  Gorder_by? get updated_at;
  Gorder_by? get uuid;
  static Serializer<Gcircles_order_by> get serializer =>
      _$gcirclesOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_order_by.serializer,
        json,
      );
}

abstract class Gcircles_pk_columns_input
    implements
        Built<Gcircles_pk_columns_input, Gcircles_pk_columns_inputBuilder> {
  Gcircles_pk_columns_input._();

  factory Gcircles_pk_columns_input(
          [void Function(Gcircles_pk_columns_inputBuilder b) updates]) =
      _$Gcircles_pk_columns_input;

  String get uuid;
  static Serializer<Gcircles_pk_columns_input> get serializer =>
      _$gcirclesPkColumnsInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_pk_columns_input.serializer,
        json,
      );
}

class Gcircles_select_column extends EnumClass {
  const Gcircles_select_column._(String name) : super(name);

  static const Gcircles_select_column created_at =
      _$gcirclesSelectColumncreated_at;

  static const Gcircles_select_column description =
      _$gcirclesSelectColumndescription;

  @BuiltValueEnumConst(wireName: 'name')
  static const Gcircles_select_column Gname = _$gcirclesSelectColumnGname;

  static const Gcircles_select_column owner_id = _$gcirclesSelectColumnowner_id;

  static const Gcircles_select_column updated_at =
      _$gcirclesSelectColumnupdated_at;

  static const Gcircles_select_column uuid = _$gcirclesSelectColumnuuid;

  static Serializer<Gcircles_select_column> get serializer =>
      _$gcirclesSelectColumnSerializer;

  static BuiltSet<Gcircles_select_column> get values =>
      _$gcirclesSelectColumnValues;

  static Gcircles_select_column valueOf(String name) =>
      _$gcirclesSelectColumnValueOf(name);
}

abstract class Gcircles_set_input
    implements Built<Gcircles_set_input, Gcircles_set_inputBuilder> {
  Gcircles_set_input._();

  factory Gcircles_set_input(
          [void Function(Gcircles_set_inputBuilder b) updates]) =
      _$Gcircles_set_input;

  String? get created_at;
  String? get description;
  String? get name;
  String? get owner_id;
  String? get updated_at;
  String? get uuid;
  static Serializer<Gcircles_set_input> get serializer =>
      _$gcirclesSetInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_set_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_set_input.serializer,
        json,
      );
}

abstract class Gcircles_stream_cursor_input
    implements
        Built<Gcircles_stream_cursor_input,
            Gcircles_stream_cursor_inputBuilder> {
  Gcircles_stream_cursor_input._();

  factory Gcircles_stream_cursor_input(
          [void Function(Gcircles_stream_cursor_inputBuilder b) updates]) =
      _$Gcircles_stream_cursor_input;

  Gcircles_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gcircles_stream_cursor_input> get serializer =>
      _$gcirclesStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gcircles_stream_cursor_value_input
    implements
        Built<Gcircles_stream_cursor_value_input,
            Gcircles_stream_cursor_value_inputBuilder> {
  Gcircles_stream_cursor_value_input._();

  factory Gcircles_stream_cursor_value_input(
      [void Function(Gcircles_stream_cursor_value_inputBuilder b)
          updates]) = _$Gcircles_stream_cursor_value_input;

  String? get created_at;
  String? get description;
  String? get name;
  String? get owner_id;
  String? get updated_at;
  String? get uuid;
  static Serializer<Gcircles_stream_cursor_value_input> get serializer =>
      _$gcirclesStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_stream_cursor_value_input.serializer,
        json,
      );
}

class Gcircles_update_column extends EnumClass {
  const Gcircles_update_column._(String name) : super(name);

  static const Gcircles_update_column created_at =
      _$gcirclesUpdateColumncreated_at;

  static const Gcircles_update_column description =
      _$gcirclesUpdateColumndescription;

  @BuiltValueEnumConst(wireName: 'name')
  static const Gcircles_update_column Gname = _$gcirclesUpdateColumnGname;

  static const Gcircles_update_column owner_id = _$gcirclesUpdateColumnowner_id;

  static const Gcircles_update_column updated_at =
      _$gcirclesUpdateColumnupdated_at;

  static const Gcircles_update_column uuid = _$gcirclesUpdateColumnuuid;

  static Serializer<Gcircles_update_column> get serializer =>
      _$gcirclesUpdateColumnSerializer;

  static BuiltSet<Gcircles_update_column> get values =>
      _$gcirclesUpdateColumnValues;

  static Gcircles_update_column valueOf(String name) =>
      _$gcirclesUpdateColumnValueOf(name);
}

abstract class Gcircles_updates
    implements Built<Gcircles_updates, Gcircles_updatesBuilder> {
  Gcircles_updates._();

  factory Gcircles_updates([void Function(Gcircles_updatesBuilder b) updates]) =
      _$Gcircles_updates;

  @BuiltValueField(wireName: '_set')
  Gcircles_set_input? get G_set;
  Gcircles_bool_exp get where;
  static Serializer<Gcircles_updates> get serializer =>
      _$gcirclesUpdatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcircles_updates.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcircles_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcircles_updates.serializer,
        json,
      );
}

class Gcursor_ordering extends EnumClass {
  const Gcursor_ordering._(String name) : super(name);

  static const Gcursor_ordering ASC = _$gcursorOrderingASC;

  static const Gcursor_ordering DESC = _$gcursorOrderingDESC;

  static Serializer<Gcursor_ordering> get serializer =>
      _$gcursorOrderingSerializer;

  static BuiltSet<Gcursor_ordering> get values => _$gcursorOrderingValues;

  static Gcursor_ordering valueOf(String name) =>
      _$gcursorOrderingValueOf(name);
}

abstract class Gdate implements Built<Gdate, GdateBuilder> {
  Gdate._();

  factory Gdate([String? value]) =>
      _$Gdate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<Gdate> get serializer => _i2.DefaultScalarSerializer<Gdate>(
      (Object serialized) => Gdate((serialized as String?)));
}

abstract class Gdate_comparison_exp
    implements Built<Gdate_comparison_exp, Gdate_comparison_expBuilder> {
  Gdate_comparison_exp._();

  factory Gdate_comparison_exp(
          [void Function(Gdate_comparison_expBuilder b) updates]) =
      _$Gdate_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  Gdate? get G_eq;
  @BuiltValueField(wireName: '_gt')
  Gdate? get G_gt;
  @BuiltValueField(wireName: '_gte')
  Gdate? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<Gdate>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  Gdate? get G_lt;
  @BuiltValueField(wireName: '_lte')
  Gdate? get G_lte;
  @BuiltValueField(wireName: '_neq')
  Gdate? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<Gdate>? get G_nin;
  static Serializer<Gdate_comparison_exp> get serializer =>
      _$gdateComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdate_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdate_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdate_comparison_exp.serializer,
        json,
      );
}

class Gorder_by extends EnumClass {
  const Gorder_by._(String name) : super(name);

  static const Gorder_by asc = _$gorderByasc;

  static const Gorder_by asc_nulls_first = _$gorderByasc_nulls_first;

  static const Gorder_by asc_nulls_last = _$gorderByasc_nulls_last;

  static const Gorder_by desc = _$gorderBydesc;

  static const Gorder_by desc_nulls_first = _$gorderBydesc_nulls_first;

  static const Gorder_by desc_nulls_last = _$gorderBydesc_nulls_last;

  static Serializer<Gorder_by> get serializer => _$gorderBySerializer;

  static BuiltSet<Gorder_by> get values => _$gorderByValues;

  static Gorder_by valueOf(String name) => _$gorderByValueOf(name);
}

abstract class Gposts_aggregate_bool_exp
    implements
        Built<Gposts_aggregate_bool_exp, Gposts_aggregate_bool_expBuilder> {
  Gposts_aggregate_bool_exp._();

  factory Gposts_aggregate_bool_exp(
          [void Function(Gposts_aggregate_bool_expBuilder b) updates]) =
      _$Gposts_aggregate_bool_exp;

  Gposts_aggregate_bool_exp_count? get count;
  static Serializer<Gposts_aggregate_bool_exp> get serializer =>
      _$gpostsAggregateBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_aggregate_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class Gposts_aggregate_bool_exp_count
    implements
        Built<Gposts_aggregate_bool_exp_count,
            Gposts_aggregate_bool_exp_countBuilder> {
  Gposts_aggregate_bool_exp_count._();

  factory Gposts_aggregate_bool_exp_count(
          [void Function(Gposts_aggregate_bool_exp_countBuilder b) updates]) =
      _$Gposts_aggregate_bool_exp_count;

  BuiltList<Gposts_select_column>? get arguments;
  bool? get distinct;
  Gposts_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<Gposts_aggregate_bool_exp_count> get serializer =>
      _$gpostsAggregateBoolExpCountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_aggregate_bool_exp_count? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class Gposts_aggregate_order_by
    implements
        Built<Gposts_aggregate_order_by, Gposts_aggregate_order_byBuilder> {
  Gposts_aggregate_order_by._();

  factory Gposts_aggregate_order_by(
          [void Function(Gposts_aggregate_order_byBuilder b) updates]) =
      _$Gposts_aggregate_order_by;

  Gorder_by? get count;
  Gposts_max_order_by? get max;
  Gposts_min_order_by? get min;
  static Serializer<Gposts_aggregate_order_by> get serializer =>
      _$gpostsAggregateOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_aggregate_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_aggregate_order_by.serializer,
        json,
      );
}

abstract class Gposts_arr_rel_insert_input
    implements
        Built<Gposts_arr_rel_insert_input, Gposts_arr_rel_insert_inputBuilder> {
  Gposts_arr_rel_insert_input._();

  factory Gposts_arr_rel_insert_input(
          [void Function(Gposts_arr_rel_insert_inputBuilder b) updates]) =
      _$Gposts_arr_rel_insert_input;

  BuiltList<Gposts_insert_input> get data;
  Gposts_on_conflict? get on_conflict;
  static Serializer<Gposts_arr_rel_insert_input> get serializer =>
      _$gpostsArrRelInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_arr_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class Gposts_bool_exp
    implements Built<Gposts_bool_exp, Gposts_bool_expBuilder> {
  Gposts_bool_exp._();

  factory Gposts_bool_exp([void Function(Gposts_bool_expBuilder b) updates]) =
      _$Gposts_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gposts_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gposts_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gposts_bool_exp>? get G_or;
  Gboards_bool_exp? get board;
  Guuid_comparison_exp? get board_uuid;
  GString_comparison_exp? get content;
  Gtimestamptz_comparison_exp? get created_at;
  Gtimestamptz_comparison_exp? get updated_at;
  Gbpchar_comparison_exp? get user_id;
  Guuid_comparison_exp? get uuid;
  static Serializer<Gposts_bool_exp> get serializer =>
      _$gpostsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_bool_exp.serializer,
        json,
      );
}

class Gposts_constraint extends EnumClass {
  const Gposts_constraint._(String name) : super(name);

  static const Gposts_constraint posts_pkey = _$gpostsConstraintposts_pkey;

  static Serializer<Gposts_constraint> get serializer =>
      _$gpostsConstraintSerializer;

  static BuiltSet<Gposts_constraint> get values => _$gpostsConstraintValues;

  static Gposts_constraint valueOf(String name) =>
      _$gpostsConstraintValueOf(name);
}

abstract class Gposts_insert_input
    implements Built<Gposts_insert_input, Gposts_insert_inputBuilder> {
  Gposts_insert_input._();

  factory Gposts_insert_input(
          [void Function(Gposts_insert_inputBuilder b) updates]) =
      _$Gposts_insert_input;

  Gboards_obj_rel_insert_input? get board;
  String? get board_uuid;
  String? get content;
  String? get created_at;
  String? get updated_at;
  String? get user_id;
  String? get uuid;
  static Serializer<Gposts_insert_input> get serializer =>
      _$gpostsInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_insert_input.serializer,
        json,
      );
}

abstract class Gposts_max_order_by
    implements Built<Gposts_max_order_by, Gposts_max_order_byBuilder> {
  Gposts_max_order_by._();

  factory Gposts_max_order_by(
          [void Function(Gposts_max_order_byBuilder b) updates]) =
      _$Gposts_max_order_by;

  Gorder_by? get board_uuid;
  Gorder_by? get content;
  Gorder_by? get created_at;
  Gorder_by? get updated_at;
  Gorder_by? get user_id;
  Gorder_by? get uuid;
  static Serializer<Gposts_max_order_by> get serializer =>
      _$gpostsMaxOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_max_order_by.serializer,
        json,
      );
}

abstract class Gposts_min_order_by
    implements Built<Gposts_min_order_by, Gposts_min_order_byBuilder> {
  Gposts_min_order_by._();

  factory Gposts_min_order_by(
          [void Function(Gposts_min_order_byBuilder b) updates]) =
      _$Gposts_min_order_by;

  Gorder_by? get board_uuid;
  Gorder_by? get content;
  Gorder_by? get created_at;
  Gorder_by? get updated_at;
  Gorder_by? get user_id;
  Gorder_by? get uuid;
  static Serializer<Gposts_min_order_by> get serializer =>
      _$gpostsMinOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_min_order_by.serializer,
        json,
      );
}

abstract class Gposts_on_conflict
    implements Built<Gposts_on_conflict, Gposts_on_conflictBuilder> {
  Gposts_on_conflict._();

  factory Gposts_on_conflict(
          [void Function(Gposts_on_conflictBuilder b) updates]) =
      _$Gposts_on_conflict;

  Gposts_constraint get constraint;
  BuiltList<Gposts_update_column> get update_columns;
  Gposts_bool_exp? get where;
  static Serializer<Gposts_on_conflict> get serializer =>
      _$gpostsOnConflictSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_on_conflict.serializer,
        json,
      );
}

abstract class Gposts_order_by
    implements Built<Gposts_order_by, Gposts_order_byBuilder> {
  Gposts_order_by._();

  factory Gposts_order_by([void Function(Gposts_order_byBuilder b) updates]) =
      _$Gposts_order_by;

  Gboards_order_by? get board;
  Gorder_by? get board_uuid;
  Gorder_by? get content;
  Gorder_by? get created_at;
  Gorder_by? get updated_at;
  Gorder_by? get user_id;
  Gorder_by? get uuid;
  static Serializer<Gposts_order_by> get serializer =>
      _$gpostsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_order_by.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_order_by.serializer,
        json,
      );
}

abstract class Gposts_pk_columns_input
    implements Built<Gposts_pk_columns_input, Gposts_pk_columns_inputBuilder> {
  Gposts_pk_columns_input._();

  factory Gposts_pk_columns_input(
          [void Function(Gposts_pk_columns_inputBuilder b) updates]) =
      _$Gposts_pk_columns_input;

  String get uuid;
  static Serializer<Gposts_pk_columns_input> get serializer =>
      _$gpostsPkColumnsInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_pk_columns_input.serializer,
        json,
      );
}

class Gposts_select_column extends EnumClass {
  const Gposts_select_column._(String name) : super(name);

  static const Gposts_select_column board_uuid = _$gpostsSelectColumnboard_uuid;

  static const Gposts_select_column content = _$gpostsSelectColumncontent;

  static const Gposts_select_column created_at = _$gpostsSelectColumncreated_at;

  static const Gposts_select_column updated_at = _$gpostsSelectColumnupdated_at;

  static const Gposts_select_column user_id = _$gpostsSelectColumnuser_id;

  static const Gposts_select_column uuid = _$gpostsSelectColumnuuid;

  static Serializer<Gposts_select_column> get serializer =>
      _$gpostsSelectColumnSerializer;

  static BuiltSet<Gposts_select_column> get values =>
      _$gpostsSelectColumnValues;

  static Gposts_select_column valueOf(String name) =>
      _$gpostsSelectColumnValueOf(name);
}

abstract class Gposts_set_input
    implements Built<Gposts_set_input, Gposts_set_inputBuilder> {
  Gposts_set_input._();

  factory Gposts_set_input([void Function(Gposts_set_inputBuilder b) updates]) =
      _$Gposts_set_input;

  String? get board_uuid;
  String? get content;
  String? get created_at;
  String? get updated_at;
  String? get user_id;
  String? get uuid;
  static Serializer<Gposts_set_input> get serializer =>
      _$gpostsSetInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_set_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_set_input.serializer,
        json,
      );
}

abstract class Gposts_stream_cursor_input
    implements
        Built<Gposts_stream_cursor_input, Gposts_stream_cursor_inputBuilder> {
  Gposts_stream_cursor_input._();

  factory Gposts_stream_cursor_input(
          [void Function(Gposts_stream_cursor_inputBuilder b) updates]) =
      _$Gposts_stream_cursor_input;

  Gposts_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gposts_stream_cursor_input> get serializer =>
      _$gpostsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gposts_stream_cursor_value_input
    implements
        Built<Gposts_stream_cursor_value_input,
            Gposts_stream_cursor_value_inputBuilder> {
  Gposts_stream_cursor_value_input._();

  factory Gposts_stream_cursor_value_input(
          [void Function(Gposts_stream_cursor_value_inputBuilder b) updates]) =
      _$Gposts_stream_cursor_value_input;

  String? get board_uuid;
  String? get content;
  String? get created_at;
  String? get updated_at;
  String? get user_id;
  String? get uuid;
  static Serializer<Gposts_stream_cursor_value_input> get serializer =>
      _$gpostsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_stream_cursor_value_input.serializer,
        json,
      );
}

class Gposts_update_column extends EnumClass {
  const Gposts_update_column._(String name) : super(name);

  static const Gposts_update_column board_uuid = _$gpostsUpdateColumnboard_uuid;

  static const Gposts_update_column content = _$gpostsUpdateColumncontent;

  static const Gposts_update_column created_at = _$gpostsUpdateColumncreated_at;

  static const Gposts_update_column updated_at = _$gpostsUpdateColumnupdated_at;

  static const Gposts_update_column user_id = _$gpostsUpdateColumnuser_id;

  static const Gposts_update_column uuid = _$gpostsUpdateColumnuuid;

  static Serializer<Gposts_update_column> get serializer =>
      _$gpostsUpdateColumnSerializer;

  static BuiltSet<Gposts_update_column> get values =>
      _$gpostsUpdateColumnValues;

  static Gposts_update_column valueOf(String name) =>
      _$gpostsUpdateColumnValueOf(name);
}

abstract class Gposts_updates
    implements Built<Gposts_updates, Gposts_updatesBuilder> {
  Gposts_updates._();

  factory Gposts_updates([void Function(Gposts_updatesBuilder b) updates]) =
      _$Gposts_updates;

  @BuiltValueField(wireName: '_set')
  Gposts_set_input? get G_set;
  Gposts_bool_exp get where;
  static Serializer<Gposts_updates> get serializer => _$gpostsUpdatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gposts_updates.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gposts_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gposts_updates.serializer,
        json,
      );
}

abstract class Gsmallint_comparison_exp
    implements
        Built<Gsmallint_comparison_exp, Gsmallint_comparison_expBuilder> {
  Gsmallint_comparison_exp._();

  factory Gsmallint_comparison_exp(
          [void Function(Gsmallint_comparison_expBuilder b) updates]) =
      _$Gsmallint_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  int? get G_eq;
  @BuiltValueField(wireName: '_gt')
  int? get G_gt;
  @BuiltValueField(wireName: '_gte')
  int? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<int>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  int? get G_lt;
  @BuiltValueField(wireName: '_lte')
  int? get G_lte;
  @BuiltValueField(wireName: '_neq')
  int? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<int>? get G_nin;
  static Serializer<Gsmallint_comparison_exp> get serializer =>
      _$gsmallintComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsmallint_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsmallint_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsmallint_comparison_exp.serializer,
        json,
      );
}

abstract class Gtimestamptz_comparison_exp
    implements
        Built<Gtimestamptz_comparison_exp, Gtimestamptz_comparison_expBuilder> {
  Gtimestamptz_comparison_exp._();

  factory Gtimestamptz_comparison_exp(
          [void Function(Gtimestamptz_comparison_expBuilder b) updates]) =
      _$Gtimestamptz_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  static Serializer<Gtimestamptz_comparison_exp> get serializer =>
      _$gtimestamptzComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gtimestamptz_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gtimestamptz_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gtimestamptz_comparison_exp.serializer,
        json,
      );
}

abstract class Guuid_comparison_exp
    implements Built<Guuid_comparison_exp, Guuid_comparison_expBuilder> {
  Guuid_comparison_exp._();

  factory Guuid_comparison_exp(
          [void Function(Guuid_comparison_expBuilder b) updates]) =
      _$Guuid_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  static Serializer<Guuid_comparison_exp> get serializer =>
      _$guuidComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guuid_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Guuid_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guuid_comparison_exp.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
