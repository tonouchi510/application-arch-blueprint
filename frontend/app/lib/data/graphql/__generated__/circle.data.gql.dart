// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'circle.data.gql.g.dart';

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
  _i2.GUUID get id;
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
  _i2.GUUID get id;
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
  _i2.GUUID get id;
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
  _i2.GUUID get id;
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
