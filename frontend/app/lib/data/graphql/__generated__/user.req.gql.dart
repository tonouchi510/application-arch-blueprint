// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:app/data/graphql/__generated__/user.ast.gql.dart' as _i5;
import 'package:app/data/graphql/__generated__/user.data.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/user.var.gql.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user.req.gql.g.dart';

abstract class GGetUsersReq
    implements
        Built<GGetUsersReq, GGetUsersReqBuilder>,
        _i1.OperationRequest<_i2.GGetUsersData, _i3.GGetUsersVars> {
  GGetUsersReq._();

  factory GGetUsersReq([void Function(GGetUsersReqBuilder b) updates]) =
      _$GGetUsersReq;

  static void _initializeBuilder(GGetUsersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetUsers',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetUsersVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetUsersData? Function(
    _i2.GGetUsersData?,
    _i2.GGetUsersData?,
  )? get updateResult;
  @override
  _i2.GGetUsersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GGetUsersData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUsersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetUsersData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetUsersData, _i3.GGetUsersVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetUsersReq> get serializer => _$gGetUsersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetUsersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUsersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetUsersReq.serializer,
        json,
      );
}

abstract class GUpdateUserAttributesReq
    implements
        Built<GUpdateUserAttributesReq, GUpdateUserAttributesReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateUserAttributesData,
            _i3.GUpdateUserAttributesVars> {
  GUpdateUserAttributesReq._();

  factory GUpdateUserAttributesReq(
          [void Function(GUpdateUserAttributesReqBuilder b) updates]) =
      _$GUpdateUserAttributesReq;

  static void _initializeBuilder(GUpdateUserAttributesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateUserAttributes',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateUserAttributesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUpdateUserAttributesData? Function(
    _i2.GUpdateUserAttributesData?,
    _i2.GUpdateUserAttributesData?,
  )? get updateResult;
  @override
  _i2.GUpdateUserAttributesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GUpdateUserAttributesData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateUserAttributesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateUserAttributesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateUserAttributesData,
      _i3.GUpdateUserAttributesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateUserAttributesReq> get serializer =>
      _$gUpdateUserAttributesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateUserAttributesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserAttributesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateUserAttributesReq.serializer,
        json,
      );
}

abstract class GDeleteUserReq
    implements
        Built<GDeleteUserReq, GDeleteUserReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteUserData, _i3.GDeleteUserVars> {
  GDeleteUserReq._();

  factory GDeleteUserReq([void Function(GDeleteUserReqBuilder b) updates]) =
      _$GDeleteUserReq;

  static void _initializeBuilder(GDeleteUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GDeleteUserData? Function(
    _i2.GDeleteUserData?,
    _i2.GDeleteUserData?,
  )? get updateResult;
  @override
  _i2.GDeleteUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GDeleteUserData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDeleteUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GDeleteUserData, _i3.GDeleteUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDeleteUserReq> get serializer =>
      _$gDeleteUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteUserReq.serializer,
        json,
      );
}
