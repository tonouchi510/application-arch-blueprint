// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/permission.ast.gql.dart' as _i5;
import 'package:app/data/graphql/__generated__/permission.data.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/permission.var.gql.dart' as _i3;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'permission.req.gql.g.dart';

abstract class GGetCirclePermissionReq
    implements
        Built<GGetCirclePermissionReq, GGetCirclePermissionReqBuilder>,
        _i1.OperationRequest<_i2.GGetCirclePermissionData,
            _i3.GGetCirclePermissionVars> {
  GGetCirclePermissionReq._();

  factory GGetCirclePermissionReq(
          [void Function(GGetCirclePermissionReqBuilder b) updates]) =
      _$GGetCirclePermissionReq;

  static void _initializeBuilder(GGetCirclePermissionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetCirclePermission',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetCirclePermissionVars get vars;
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
  _i2.GGetCirclePermissionData? Function(
    _i2.GGetCirclePermissionData?,
    _i2.GGetCirclePermissionData?,
  )? get updateResult;
  @override
  _i2.GGetCirclePermissionData? get optimisticResponse;
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
  _i2.GGetCirclePermissionData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCirclePermissionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetCirclePermissionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetCirclePermissionData,
      _i3.GGetCirclePermissionVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetCirclePermissionReq> get serializer =>
      _$gGetCirclePermissionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetCirclePermissionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCirclePermissionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetCirclePermissionReq.serializer,
        json,
      );
}

abstract class GChangeBoardCreationPermissionReq
    implements
        Built<GChangeBoardCreationPermissionReq,
            GChangeBoardCreationPermissionReqBuilder>,
        _i1.OperationRequest<_i2.GChangeBoardCreationPermissionData,
            _i3.GChangeBoardCreationPermissionVars> {
  GChangeBoardCreationPermissionReq._();

  factory GChangeBoardCreationPermissionReq(
          [void Function(GChangeBoardCreationPermissionReqBuilder b) updates]) =
      _$GChangeBoardCreationPermissionReq;

  static void _initializeBuilder(GChangeBoardCreationPermissionReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'ChangeBoardCreationPermission',
        )
        ..executeOnListen = true;

  @override
  _i3.GChangeBoardCreationPermissionVars get vars;
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
  _i2.GChangeBoardCreationPermissionData? Function(
    _i2.GChangeBoardCreationPermissionData?,
    _i2.GChangeBoardCreationPermissionData?,
  )? get updateResult;
  @override
  _i2.GChangeBoardCreationPermissionData? get optimisticResponse;
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
  _i2.GChangeBoardCreationPermissionData? parseData(
          Map<String, dynamic> json) =>
      _i2.GChangeBoardCreationPermissionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GChangeBoardCreationPermissionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GChangeBoardCreationPermissionData,
      _i3.GChangeBoardCreationPermissionVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GChangeBoardCreationPermissionReq> get serializer =>
      _$gChangeBoardCreationPermissionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GChangeBoardCreationPermissionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardCreationPermissionReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GChangeBoardCreationPermissionReq.serializer,
        json,
      );
}
