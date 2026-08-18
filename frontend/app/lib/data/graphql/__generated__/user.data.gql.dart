// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.data.gql.g.dart';

abstract class GGetUsersData
    implements Built<GGetUsersData, GGetUsersDataBuilder> {
  GGetUsersData._();

  factory GGetUsersData([void Function(GGetUsersDataBuilder b) updates]) =
      _$GGetUsersData;

  static void _initializeBuilder(GGetUsersDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetUsersData_users> get users;
  static Serializer<GGetUsersData> get serializer => _$gGetUsersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUsersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUsersData.serializer,
        json,
      );
}

abstract class GGetUsersData_users
    implements Built<GGetUsersData_users, GGetUsersData_usersBuilder> {
  GGetUsersData_users._();

  factory GGetUsersData_users(
          [void Function(GGetUsersData_usersBuilder b) updates]) =
      _$GGetUsersData_users;

  static void _initializeBuilder(GGetUsersData_usersBuilder b) =>
      b..G__typename = 'UserModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetUsersData_users> get serializer =>
      _$gGetUsersDataUsersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUsersData_users.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUsersData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUsersData_users.serializer,
        json,
      );
}

abstract class GUpdateUserAttributesData
    implements
        Built<GUpdateUserAttributesData, GUpdateUserAttributesDataBuilder> {
  GUpdateUserAttributesData._();

  factory GUpdateUserAttributesData(
          [void Function(GUpdateUserAttributesDataBuilder b) updates]) =
      _$GUpdateUserAttributesData;

  static void _initializeBuilder(GUpdateUserAttributesDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateUserAttributesData_update_user_attributes get update_user_attributes;
  static Serializer<GUpdateUserAttributesData> get serializer =>
      _$gUpdateUserAttributesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserAttributesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserAttributesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserAttributesData.serializer,
        json,
      );
}

abstract class GUpdateUserAttributesData_update_user_attributes
    implements
        Built<GUpdateUserAttributesData_update_user_attributes,
            GUpdateUserAttributesData_update_user_attributesBuilder> {
  GUpdateUserAttributesData_update_user_attributes._();

  factory GUpdateUserAttributesData_update_user_attributes(
      [void Function(GUpdateUserAttributesData_update_user_attributesBuilder b)
          updates]) = _$GUpdateUserAttributesData_update_user_attributes;

  static void _initializeBuilder(
          GUpdateUserAttributesData_update_user_attributesBuilder b) =>
      b..G__typename = 'UserModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get email;
  bool get email_verified;
  String? get phone_number;
  String? get photo_url;
  static Serializer<GUpdateUserAttributesData_update_user_attributes>
      get serializer =>
          _$gUpdateUserAttributesDataUpdateUserAttributesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserAttributesData_update_user_attributes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserAttributesData_update_user_attributes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserAttributesData_update_user_attributes.serializer,
        json,
      );
}

abstract class GDeleteUserData
    implements Built<GDeleteUserData, GDeleteUserDataBuilder> {
  GDeleteUserData._();

  factory GDeleteUserData([void Function(GDeleteUserDataBuilder b) updates]) =
      _$GDeleteUserData;

  static void _initializeBuilder(GDeleteUserDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get delete_user;
  static Serializer<GDeleteUserData> get serializer =>
      _$gDeleteUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteUserData.serializer,
        json,
      );
}
