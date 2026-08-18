// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'circle.data.gql.g.dart';

abstract class GGetMyCirclesData
    implements Built<GGetMyCirclesData, GGetMyCirclesDataBuilder> {
  GGetMyCirclesData._();

  factory GGetMyCirclesData(
          [void Function(GGetMyCirclesDataBuilder b) updates]) =
      _$GGetMyCirclesData;

  static void _initializeBuilder(GGetMyCirclesDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetMyCirclesData_circles> get circles;
  static Serializer<GGetMyCirclesData> get serializer =>
      _$gGetMyCirclesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetMyCirclesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetMyCirclesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetMyCirclesData.serializer,
        json,
      );
}

abstract class GGetMyCirclesData_circles
    implements
        Built<GGetMyCirclesData_circles, GGetMyCirclesData_circlesBuilder> {
  GGetMyCirclesData_circles._();

  factory GGetMyCirclesData_circles(
          [void Function(GGetMyCirclesData_circlesBuilder b) updates]) =
      _$GGetMyCirclesData_circles;

  static void _initializeBuilder(GGetMyCirclesData_circlesBuilder b) =>
      b..G__typename = 'circles';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uuid;
  String get name;
  String get description;
  String get owner_id;
  GGetMyCirclesData_circles_circle_members_aggregate
      get circle_members_aggregate;
  static Serializer<GGetMyCirclesData_circles> get serializer =>
      _$gGetMyCirclesDataCirclesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetMyCirclesData_circles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetMyCirclesData_circles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetMyCirclesData_circles.serializer,
        json,
      );
}

abstract class GGetMyCirclesData_circles_circle_members_aggregate
    implements
        Built<GGetMyCirclesData_circles_circle_members_aggregate,
            GGetMyCirclesData_circles_circle_members_aggregateBuilder> {
  GGetMyCirclesData_circles_circle_members_aggregate._();

  factory GGetMyCirclesData_circles_circle_members_aggregate(
      [void Function(
              GGetMyCirclesData_circles_circle_members_aggregateBuilder b)
          updates]) = _$GGetMyCirclesData_circles_circle_members_aggregate;

  static void _initializeBuilder(
          GGetMyCirclesData_circles_circle_members_aggregateBuilder b) =>
      b..G__typename = 'circle_members_aggregate';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetMyCirclesData_circles_circle_members_aggregate_aggregate? get aggregate;
  static Serializer<GGetMyCirclesData_circles_circle_members_aggregate>
      get serializer =>
          _$gGetMyCirclesDataCirclesCircleMembersAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetMyCirclesData_circles_circle_members_aggregate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetMyCirclesData_circles_circle_members_aggregate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetMyCirclesData_circles_circle_members_aggregate.serializer,
        json,
      );
}

abstract class GGetMyCirclesData_circles_circle_members_aggregate_aggregate
    implements
        Built<GGetMyCirclesData_circles_circle_members_aggregate_aggregate,
            GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder> {
  GGetMyCirclesData_circles_circle_members_aggregate_aggregate._();

  factory GGetMyCirclesData_circles_circle_members_aggregate_aggregate(
          [void Function(
                  GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder
                      b)
              updates]) =
      _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate;

  static void _initializeBuilder(
          GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder
              b) =>
      b..G__typename = 'circle_members_aggregate_fields';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  static Serializer<
          GGetMyCirclesData_circles_circle_members_aggregate_aggregate>
      get serializer =>
          _$gGetMyCirclesDataCirclesCircleMembersAggregateAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetMyCirclesData_circles_circle_members_aggregate_aggregate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetMyCirclesData_circles_circle_members_aggregate_aggregate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetMyCirclesData_circles_circle_members_aggregate_aggregate.serializer,
        json,
      );
}

abstract class GGetAllCirclesData
    implements Built<GGetAllCirclesData, GGetAllCirclesDataBuilder> {
  GGetAllCirclesData._();

  factory GGetAllCirclesData(
          [void Function(GGetAllCirclesDataBuilder b) updates]) =
      _$GGetAllCirclesData;

  static void _initializeBuilder(GGetAllCirclesDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAllCirclesData_circles> get circles;
  static Serializer<GGetAllCirclesData> get serializer =>
      _$gGetAllCirclesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllCirclesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllCirclesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllCirclesData.serializer,
        json,
      );
}

abstract class GGetAllCirclesData_circles
    implements
        Built<GGetAllCirclesData_circles, GGetAllCirclesData_circlesBuilder> {
  GGetAllCirclesData_circles._();

  factory GGetAllCirclesData_circles(
          [void Function(GGetAllCirclesData_circlesBuilder b) updates]) =
      _$GGetAllCirclesData_circles;

  static void _initializeBuilder(GGetAllCirclesData_circlesBuilder b) =>
      b..G__typename = 'circles';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uuid;
  String get name;
  String get description;
  String get owner_id;
  GGetAllCirclesData_circles_circle_members_aggregate
      get circle_members_aggregate;
  static Serializer<GGetAllCirclesData_circles> get serializer =>
      _$gGetAllCirclesDataCirclesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllCirclesData_circles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllCirclesData_circles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllCirclesData_circles.serializer,
        json,
      );
}

abstract class GGetAllCirclesData_circles_circle_members_aggregate
    implements
        Built<GGetAllCirclesData_circles_circle_members_aggregate,
            GGetAllCirclesData_circles_circle_members_aggregateBuilder> {
  GGetAllCirclesData_circles_circle_members_aggregate._();

  factory GGetAllCirclesData_circles_circle_members_aggregate(
      [void Function(
              GGetAllCirclesData_circles_circle_members_aggregateBuilder b)
          updates]) = _$GGetAllCirclesData_circles_circle_members_aggregate;

  static void _initializeBuilder(
          GGetAllCirclesData_circles_circle_members_aggregateBuilder b) =>
      b..G__typename = 'circle_members_aggregate';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetAllCirclesData_circles_circle_members_aggregate_aggregate? get aggregate;
  static Serializer<GGetAllCirclesData_circles_circle_members_aggregate>
      get serializer =>
          _$gGetAllCirclesDataCirclesCircleMembersAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllCirclesData_circles_circle_members_aggregate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllCirclesData_circles_circle_members_aggregate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllCirclesData_circles_circle_members_aggregate.serializer,
        json,
      );
}

abstract class GGetAllCirclesData_circles_circle_members_aggregate_aggregate
    implements
        Built<GGetAllCirclesData_circles_circle_members_aggregate_aggregate,
            GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder> {
  GGetAllCirclesData_circles_circle_members_aggregate_aggregate._();

  factory GGetAllCirclesData_circles_circle_members_aggregate_aggregate(
          [void Function(
                  GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder
                      b)
              updates]) =
      _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate;

  static void _initializeBuilder(
          GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder
              b) =>
      b..G__typename = 'circle_members_aggregate_fields';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  static Serializer<
          GGetAllCirclesData_circles_circle_members_aggregate_aggregate>
      get serializer =>
          _$gGetAllCirclesDataCirclesCircleMembersAggregateAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllCirclesData_circles_circle_members_aggregate_aggregate
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllCirclesData_circles_circle_members_aggregate_aggregate?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GGetAllCirclesData_circles_circle_members_aggregate_aggregate
                .serializer,
            json,
          );
}

abstract class GGetCircleData
    implements Built<GGetCircleData, GGetCircleDataBuilder> {
  GGetCircleData._();

  factory GGetCircleData([void Function(GGetCircleDataBuilder b) updates]) =
      _$GGetCircleData;

  static void _initializeBuilder(GGetCircleDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCircleData_circles_by_pk? get circles_by_pk;
  static Serializer<GGetCircleData> get serializer =>
      _$gGetCircleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleData.serializer,
        json,
      );
}

abstract class GGetCircleData_circles_by_pk
    implements
        Built<GGetCircleData_circles_by_pk,
            GGetCircleData_circles_by_pkBuilder> {
  GGetCircleData_circles_by_pk._();

  factory GGetCircleData_circles_by_pk(
          [void Function(GGetCircleData_circles_by_pkBuilder b) updates]) =
      _$GGetCircleData_circles_by_pk;

  static void _initializeBuilder(GGetCircleData_circles_by_pkBuilder b) =>
      b..G__typename = 'circles';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uuid;
  String get name;
  String get description;
  String get owner_id;
  String get created_at;
  GGetCircleData_circles_by_pk_circle_members_aggregate
      get circle_members_aggregate;
  static Serializer<GGetCircleData_circles_by_pk> get serializer =>
      _$gGetCircleDataCirclesByPkSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleData_circles_by_pk.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleData_circles_by_pk? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleData_circles_by_pk.serializer,
        json,
      );
}

abstract class GGetCircleData_circles_by_pk_circle_members_aggregate
    implements
        Built<GGetCircleData_circles_by_pk_circle_members_aggregate,
            GGetCircleData_circles_by_pk_circle_members_aggregateBuilder> {
  GGetCircleData_circles_by_pk_circle_members_aggregate._();

  factory GGetCircleData_circles_by_pk_circle_members_aggregate(
      [void Function(
              GGetCircleData_circles_by_pk_circle_members_aggregateBuilder b)
          updates]) = _$GGetCircleData_circles_by_pk_circle_members_aggregate;

  static void _initializeBuilder(
          GGetCircleData_circles_by_pk_circle_members_aggregateBuilder b) =>
      b..G__typename = 'circle_members_aggregate';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate?
      get aggregate;
  static Serializer<GGetCircleData_circles_by_pk_circle_members_aggregate>
      get serializer =>
          _$gGetCircleDataCirclesByPkCircleMembersAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleData_circles_by_pk_circle_members_aggregate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleData_circles_by_pk_circle_members_aggregate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleData_circles_by_pk_circle_members_aggregate.serializer,
        json,
      );
}

abstract class GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate
    implements
        Built<GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate,
            GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder> {
  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate._();

  factory GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate(
          [void Function(
                  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder
                      b)
              updates]) =
      _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate;

  static void _initializeBuilder(
          GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder
              b) =>
      b..G__typename = 'circle_members_aggregate_fields';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  static Serializer<
          GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate>
      get serializer =>
          _$gGetCircleDataCirclesByPkCircleMembersAggregateAggregateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate
                .serializer,
            json,
          );
}

abstract class GGetCircleMembersData
    implements Built<GGetCircleMembersData, GGetCircleMembersDataBuilder> {
  GGetCircleMembersData._();

  factory GGetCircleMembersData(
          [void Function(GGetCircleMembersDataBuilder b) updates]) =
      _$GGetCircleMembersData;

  static void _initializeBuilder(GGetCircleMembersDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetCircleMembersData_circle_members> get circle_members;
  static Serializer<GGetCircleMembersData> get serializer =>
      _$gGetCircleMembersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleMembersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleMembersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleMembersData.serializer,
        json,
      );
}

abstract class GGetCircleMembersData_circle_members
    implements
        Built<GGetCircleMembersData_circle_members,
            GGetCircleMembersData_circle_membersBuilder> {
  GGetCircleMembersData_circle_members._();

  factory GGetCircleMembersData_circle_members(
      [void Function(GGetCircleMembersData_circle_membersBuilder b)
          updates]) = _$GGetCircleMembersData_circle_members;

  static void _initializeBuilder(
          GGetCircleMembersData_circle_membersBuilder b) =>
      b..G__typename = 'circle_members';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uuid;
  String get user_id;
  String get circle_uuid;
  _i2.Gdate get joined_date;
  static Serializer<GGetCircleMembersData_circle_members> get serializer =>
      _$gGetCircleMembersDataCircleMembersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCircleMembersData_circle_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleMembersData_circle_members? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCircleMembersData_circle_members.serializer,
        json,
      );
}

abstract class GLeaveCircleData
    implements Built<GLeaveCircleData, GLeaveCircleDataBuilder> {
  GLeaveCircleData._();

  factory GLeaveCircleData([void Function(GLeaveCircleDataBuilder b) updates]) =
      _$GLeaveCircleData;

  static void _initializeBuilder(GLeaveCircleDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLeaveCircleData_delete_circle_members? get delete_circle_members;
  static Serializer<GLeaveCircleData> get serializer =>
      _$gLeaveCircleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLeaveCircleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLeaveCircleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLeaveCircleData.serializer,
        json,
      );
}

abstract class GLeaveCircleData_delete_circle_members
    implements
        Built<GLeaveCircleData_delete_circle_members,
            GLeaveCircleData_delete_circle_membersBuilder> {
  GLeaveCircleData_delete_circle_members._();

  factory GLeaveCircleData_delete_circle_members(
      [void Function(GLeaveCircleData_delete_circle_membersBuilder b)
          updates]) = _$GLeaveCircleData_delete_circle_members;

  static void _initializeBuilder(
          GLeaveCircleData_delete_circle_membersBuilder b) =>
      b..G__typename = 'circle_members_mutation_response';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get affected_rows;
  static Serializer<GLeaveCircleData_delete_circle_members> get serializer =>
      _$gLeaveCircleDataDeleteCircleMembersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLeaveCircleData_delete_circle_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLeaveCircleData_delete_circle_members? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLeaveCircleData_delete_circle_members.serializer,
        json,
      );
}

abstract class GCreateCircleData
    implements Built<GCreateCircleData, GCreateCircleDataBuilder> {
  GCreateCircleData._();

  factory GCreateCircleData(
          [void Function(GCreateCircleDataBuilder b) updates]) =
      _$GCreateCircleData;

  static void _initializeBuilder(GCreateCircleDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateCircleData_create_circle get create_circle;
  static Serializer<GCreateCircleData> get serializer =>
      _$gCreateCircleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCircleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCircleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCircleData.serializer,
        json,
      );
}

abstract class GCreateCircleData_create_circle
    implements
        Built<GCreateCircleData_create_circle,
            GCreateCircleData_create_circleBuilder> {
  GCreateCircleData_create_circle._();

  factory GCreateCircleData_create_circle(
          [void Function(GCreateCircleData_create_circleBuilder b) updates]) =
      _$GCreateCircleData_create_circle;

  static void _initializeBuilder(GCreateCircleData_create_circleBuilder b) =>
      b..G__typename = 'CircleModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get description;
  String get owner_id;
  static Serializer<GCreateCircleData_create_circle> get serializer =>
      _$gCreateCircleDataCreateCircleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCircleData_create_circle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCircleData_create_circle? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCircleData_create_circle.serializer,
        json,
      );
}

abstract class GAddCircleMemberData
    implements Built<GAddCircleMemberData, GAddCircleMemberDataBuilder> {
  GAddCircleMemberData._();

  factory GAddCircleMemberData(
          [void Function(GAddCircleMemberDataBuilder b) updates]) =
      _$GAddCircleMemberData;

  static void _initializeBuilder(GAddCircleMemberDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get add_circle_member;
  static Serializer<GAddCircleMemberData> get serializer =>
      _$gAddCircleMemberDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddCircleMemberData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddCircleMemberData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddCircleMemberData.serializer,
        json,
      );
}

abstract class GChangeCircleNameData
    implements Built<GChangeCircleNameData, GChangeCircleNameDataBuilder> {
  GChangeCircleNameData._();

  factory GChangeCircleNameData(
          [void Function(GChangeCircleNameDataBuilder b) updates]) =
      _$GChangeCircleNameData;

  static void _initializeBuilder(GChangeCircleNameDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChangeCircleNameData_change_circle_name get change_circle_name;
  static Serializer<GChangeCircleNameData> get serializer =>
      _$gChangeCircleNameDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleNameData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleNameData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleNameData.serializer,
        json,
      );
}

abstract class GChangeCircleNameData_change_circle_name
    implements
        Built<GChangeCircleNameData_change_circle_name,
            GChangeCircleNameData_change_circle_nameBuilder> {
  GChangeCircleNameData_change_circle_name._();

  factory GChangeCircleNameData_change_circle_name(
      [void Function(GChangeCircleNameData_change_circle_nameBuilder b)
          updates]) = _$GChangeCircleNameData_change_circle_name;

  static void _initializeBuilder(
          GChangeCircleNameData_change_circle_nameBuilder b) =>
      b..G__typename = 'CircleModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get description;
  String get owner_id;
  static Serializer<GChangeCircleNameData_change_circle_name> get serializer =>
      _$gChangeCircleNameDataChangeCircleNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleNameData_change_circle_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleNameData_change_circle_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleNameData_change_circle_name.serializer,
        json,
      );
}

abstract class GChangeCircleDescriptionData
    implements
        Built<GChangeCircleDescriptionData,
            GChangeCircleDescriptionDataBuilder> {
  GChangeCircleDescriptionData._();

  factory GChangeCircleDescriptionData(
          [void Function(GChangeCircleDescriptionDataBuilder b) updates]) =
      _$GChangeCircleDescriptionData;

  static void _initializeBuilder(GChangeCircleDescriptionDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChangeCircleDescriptionData_change_circle_description
      get change_circle_description;
  static Serializer<GChangeCircleDescriptionData> get serializer =>
      _$gChangeCircleDescriptionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleDescriptionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleDescriptionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleDescriptionData.serializer,
        json,
      );
}

abstract class GChangeCircleDescriptionData_change_circle_description
    implements
        Built<GChangeCircleDescriptionData_change_circle_description,
            GChangeCircleDescriptionData_change_circle_descriptionBuilder> {
  GChangeCircleDescriptionData_change_circle_description._();

  factory GChangeCircleDescriptionData_change_circle_description(
      [void Function(
              GChangeCircleDescriptionData_change_circle_descriptionBuilder b)
          updates]) = _$GChangeCircleDescriptionData_change_circle_description;

  static void _initializeBuilder(
          GChangeCircleDescriptionData_change_circle_descriptionBuilder b) =>
      b..G__typename = 'CircleModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get description;
  String get owner_id;
  static Serializer<GChangeCircleDescriptionData_change_circle_description>
      get serializer =>
          _$gChangeCircleDescriptionDataChangeCircleDescriptionSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChangeCircleDescriptionData_change_circle_description.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleDescriptionData_change_circle_description? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChangeCircleDescriptionData_change_circle_description.serializer,
        json,
      );
}

abstract class GDelegateCircleOwnerData
    implements
        Built<GDelegateCircleOwnerData, GDelegateCircleOwnerDataBuilder> {
  GDelegateCircleOwnerData._();

  factory GDelegateCircleOwnerData(
          [void Function(GDelegateCircleOwnerDataBuilder b) updates]) =
      _$GDelegateCircleOwnerData;

  static void _initializeBuilder(GDelegateCircleOwnerDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDelegateCircleOwnerData_delegate_circle_owner get delegate_circle_owner;
  static Serializer<GDelegateCircleOwnerData> get serializer =>
      _$gDelegateCircleOwnerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDelegateCircleOwnerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegateCircleOwnerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDelegateCircleOwnerData.serializer,
        json,
      );
}

abstract class GDelegateCircleOwnerData_delegate_circle_owner
    implements
        Built<GDelegateCircleOwnerData_delegate_circle_owner,
            GDelegateCircleOwnerData_delegate_circle_ownerBuilder> {
  GDelegateCircleOwnerData_delegate_circle_owner._();

  factory GDelegateCircleOwnerData_delegate_circle_owner(
      [void Function(GDelegateCircleOwnerData_delegate_circle_ownerBuilder b)
          updates]) = _$GDelegateCircleOwnerData_delegate_circle_owner;

  static void _initializeBuilder(
          GDelegateCircleOwnerData_delegate_circle_ownerBuilder b) =>
      b..G__typename = 'CircleModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get description;
  String get owner_id;
  static Serializer<GDelegateCircleOwnerData_delegate_circle_owner>
      get serializer => _$gDelegateCircleOwnerDataDelegateCircleOwnerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDelegateCircleOwnerData_delegate_circle_owner.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegateCircleOwnerData_delegate_circle_owner? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDelegateCircleOwnerData_delegate_circle_owner.serializer,
        json,
      );
}

abstract class GDeleteCircleData
    implements Built<GDeleteCircleData, GDeleteCircleDataBuilder> {
  GDeleteCircleData._();

  factory GDeleteCircleData(
          [void Function(GDeleteCircleDataBuilder b) updates]) =
      _$GDeleteCircleData;

  static void _initializeBuilder(GDeleteCircleDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get delete_circle;
  static Serializer<GDeleteCircleData> get serializer =>
      _$gDeleteCircleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteCircleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCircleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteCircleData.serializer,
        json,
      );
}
