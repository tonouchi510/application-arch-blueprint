// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/circle.ast.gql.dart' as _i5;
import 'package:app/data/graphql/__generated__/circle.data.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/circle.var.gql.dart' as _i3;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'circle.req.gql.g.dart';

abstract class GGetMyCirclesReq
    implements
        Built<GGetMyCirclesReq, GGetMyCirclesReqBuilder>,
        _i1.OperationRequest<_i2.GGetMyCirclesData, _i3.GGetMyCirclesVars> {
  GGetMyCirclesReq._();

  factory GGetMyCirclesReq([void Function(GGetMyCirclesReqBuilder b) updates]) =
      _$GGetMyCirclesReq;

  static void _initializeBuilder(GGetMyCirclesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetMyCircles',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetMyCirclesVars get vars;
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
  _i2.GGetMyCirclesData? Function(
    _i2.GGetMyCirclesData?,
    _i2.GGetMyCirclesData?,
  )? get updateResult;
  @override
  _i2.GGetMyCirclesData? get optimisticResponse;
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
  _i2.GGetMyCirclesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetMyCirclesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetMyCirclesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetMyCirclesData, _i3.GGetMyCirclesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetMyCirclesReq> get serializer =>
      _$gGetMyCirclesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetMyCirclesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetMyCirclesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetMyCirclesReq.serializer,
        json,
      );
}

abstract class GGetAllCirclesReq
    implements
        Built<GGetAllCirclesReq, GGetAllCirclesReqBuilder>,
        _i1.OperationRequest<_i2.GGetAllCirclesData, _i3.GGetAllCirclesVars> {
  GGetAllCirclesReq._();

  factory GGetAllCirclesReq(
          [void Function(GGetAllCirclesReqBuilder b) updates]) =
      _$GGetAllCirclesReq;

  static void _initializeBuilder(GGetAllCirclesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetAllCircles',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetAllCirclesVars get vars;
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
  _i2.GGetAllCirclesData? Function(
    _i2.GGetAllCirclesData?,
    _i2.GGetAllCirclesData?,
  )? get updateResult;
  @override
  _i2.GGetAllCirclesData? get optimisticResponse;
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
  _i2.GGetAllCirclesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAllCirclesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetAllCirclesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetAllCirclesData, _i3.GGetAllCirclesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetAllCirclesReq> get serializer =>
      _$gGetAllCirclesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetAllCirclesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllCirclesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetAllCirclesReq.serializer,
        json,
      );
}

abstract class GGetCircleReq
    implements
        Built<GGetCircleReq, GGetCircleReqBuilder>,
        _i1.OperationRequest<_i2.GGetCircleData, _i3.GGetCircleVars> {
  GGetCircleReq._();

  factory GGetCircleReq([void Function(GGetCircleReqBuilder b) updates]) =
      _$GGetCircleReq;

  static void _initializeBuilder(GGetCircleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetCircle',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetCircleVars get vars;
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
  _i2.GGetCircleData? Function(
    _i2.GGetCircleData?,
    _i2.GGetCircleData?,
  )? get updateResult;
  @override
  _i2.GGetCircleData? get optimisticResponse;
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
  _i2.GGetCircleData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCircleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetCircleData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetCircleData, _i3.GGetCircleVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetCircleReq> get serializer => _$gGetCircleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetCircleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetCircleReq.serializer,
        json,
      );
}

abstract class GGetCircleMembersReq
    implements
        Built<GGetCircleMembersReq, GGetCircleMembersReqBuilder>,
        _i1.OperationRequest<_i2.GGetCircleMembersData,
            _i3.GGetCircleMembersVars> {
  GGetCircleMembersReq._();

  factory GGetCircleMembersReq(
          [void Function(GGetCircleMembersReqBuilder b) updates]) =
      _$GGetCircleMembersReq;

  static void _initializeBuilder(GGetCircleMembersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetCircleMembers',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetCircleMembersVars get vars;
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
  _i2.GGetCircleMembersData? Function(
    _i2.GGetCircleMembersData?,
    _i2.GGetCircleMembersData?,
  )? get updateResult;
  @override
  _i2.GGetCircleMembersData? get optimisticResponse;
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
  _i2.GGetCircleMembersData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCircleMembersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetCircleMembersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetCircleMembersData, _i3.GGetCircleMembersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetCircleMembersReq> get serializer =>
      _$gGetCircleMembersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetCircleMembersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleMembersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetCircleMembersReq.serializer,
        json,
      );
}

abstract class GLeaveCircleReq
    implements
        Built<GLeaveCircleReq, GLeaveCircleReqBuilder>,
        _i1.OperationRequest<_i2.GLeaveCircleData, _i3.GLeaveCircleVars> {
  GLeaveCircleReq._();

  factory GLeaveCircleReq([void Function(GLeaveCircleReqBuilder b) updates]) =
      _$GLeaveCircleReq;

  static void _initializeBuilder(GLeaveCircleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'LeaveCircle',
    )
    ..executeOnListen = true;

  @override
  _i3.GLeaveCircleVars get vars;
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
  _i2.GLeaveCircleData? Function(
    _i2.GLeaveCircleData?,
    _i2.GLeaveCircleData?,
  )? get updateResult;
  @override
  _i2.GLeaveCircleData? get optimisticResponse;
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
  _i2.GLeaveCircleData? parseData(Map<String, dynamic> json) =>
      _i2.GLeaveCircleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GLeaveCircleData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GLeaveCircleData, _i3.GLeaveCircleVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GLeaveCircleReq> get serializer =>
      _$gLeaveCircleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLeaveCircleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLeaveCircleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLeaveCircleReq.serializer,
        json,
      );
}

abstract class GCreateCircleReq
    implements
        Built<GCreateCircleReq, GCreateCircleReqBuilder>,
        _i1.OperationRequest<_i2.GCreateCircleData, _i3.GCreateCircleVars> {
  GCreateCircleReq._();

  factory GCreateCircleReq([void Function(GCreateCircleReqBuilder b) updates]) =
      _$GCreateCircleReq;

  static void _initializeBuilder(GCreateCircleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateCircle',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateCircleVars get vars;
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
  _i2.GCreateCircleData? Function(
    _i2.GCreateCircleData?,
    _i2.GCreateCircleData?,
  )? get updateResult;
  @override
  _i2.GCreateCircleData? get optimisticResponse;
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
  _i2.GCreateCircleData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateCircleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateCircleData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateCircleData, _i3.GCreateCircleVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateCircleReq> get serializer =>
      _$gCreateCircleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateCircleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCircleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateCircleReq.serializer,
        json,
      );
}

abstract class GAddCircleMemberReq
    implements
        Built<GAddCircleMemberReq, GAddCircleMemberReqBuilder>,
        _i1
        .OperationRequest<_i2.GAddCircleMemberData, _i3.GAddCircleMemberVars> {
  GAddCircleMemberReq._();

  factory GAddCircleMemberReq(
          [void Function(GAddCircleMemberReqBuilder b) updates]) =
      _$GAddCircleMemberReq;

  static void _initializeBuilder(GAddCircleMemberReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AddCircleMember',
    )
    ..executeOnListen = true;

  @override
  _i3.GAddCircleMemberVars get vars;
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
  _i2.GAddCircleMemberData? Function(
    _i2.GAddCircleMemberData?,
    _i2.GAddCircleMemberData?,
  )? get updateResult;
  @override
  _i2.GAddCircleMemberData? get optimisticResponse;
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
  _i2.GAddCircleMemberData? parseData(Map<String, dynamic> json) =>
      _i2.GAddCircleMemberData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAddCircleMemberData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GAddCircleMemberData, _i3.GAddCircleMemberVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAddCircleMemberReq> get serializer =>
      _$gAddCircleMemberReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAddCircleMemberReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddCircleMemberReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAddCircleMemberReq.serializer,
        json,
      );
}

abstract class GChangeCircleNameReq
    implements
        Built<GChangeCircleNameReq, GChangeCircleNameReqBuilder>,
        _i1.OperationRequest<_i2.GChangeCircleNameData,
            _i3.GChangeCircleNameVars> {
  GChangeCircleNameReq._();

  factory GChangeCircleNameReq(
          [void Function(GChangeCircleNameReqBuilder b) updates]) =
      _$GChangeCircleNameReq;

  static void _initializeBuilder(GChangeCircleNameReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ChangeCircleName',
    )
    ..executeOnListen = true;

  @override
  _i3.GChangeCircleNameVars get vars;
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
  _i2.GChangeCircleNameData? Function(
    _i2.GChangeCircleNameData?,
    _i2.GChangeCircleNameData?,
  )? get updateResult;
  @override
  _i2.GChangeCircleNameData? get optimisticResponse;
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
  _i2.GChangeCircleNameData? parseData(Map<String, dynamic> json) =>
      _i2.GChangeCircleNameData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GChangeCircleNameData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GChangeCircleNameData, _i3.GChangeCircleNameVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GChangeCircleNameReq> get serializer =>
      _$gChangeCircleNameReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GChangeCircleNameReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleNameReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GChangeCircleNameReq.serializer,
        json,
      );
}

abstract class GChangeCircleDescriptionReq
    implements
        Built<GChangeCircleDescriptionReq, GChangeCircleDescriptionReqBuilder>,
        _i1.OperationRequest<_i2.GChangeCircleDescriptionData,
            _i3.GChangeCircleDescriptionVars> {
  GChangeCircleDescriptionReq._();

  factory GChangeCircleDescriptionReq(
          [void Function(GChangeCircleDescriptionReqBuilder b) updates]) =
      _$GChangeCircleDescriptionReq;

  static void _initializeBuilder(GChangeCircleDescriptionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ChangeCircleDescription',
    )
    ..executeOnListen = true;

  @override
  _i3.GChangeCircleDescriptionVars get vars;
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
  _i2.GChangeCircleDescriptionData? Function(
    _i2.GChangeCircleDescriptionData?,
    _i2.GChangeCircleDescriptionData?,
  )? get updateResult;
  @override
  _i2.GChangeCircleDescriptionData? get optimisticResponse;
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
  _i2.GChangeCircleDescriptionData? parseData(Map<String, dynamic> json) =>
      _i2.GChangeCircleDescriptionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GChangeCircleDescriptionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GChangeCircleDescriptionData,
      _i3.GChangeCircleDescriptionVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GChangeCircleDescriptionReq> get serializer =>
      _$gChangeCircleDescriptionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GChangeCircleDescriptionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeCircleDescriptionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GChangeCircleDescriptionReq.serializer,
        json,
      );
}

abstract class GDelegateCircleOwnerReq
    implements
        Built<GDelegateCircleOwnerReq, GDelegateCircleOwnerReqBuilder>,
        _i1.OperationRequest<_i2.GDelegateCircleOwnerData,
            _i3.GDelegateCircleOwnerVars> {
  GDelegateCircleOwnerReq._();

  factory GDelegateCircleOwnerReq(
          [void Function(GDelegateCircleOwnerReqBuilder b) updates]) =
      _$GDelegateCircleOwnerReq;

  static void _initializeBuilder(GDelegateCircleOwnerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DelegateCircleOwner',
    )
    ..executeOnListen = true;

  @override
  _i3.GDelegateCircleOwnerVars get vars;
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
  _i2.GDelegateCircleOwnerData? Function(
    _i2.GDelegateCircleOwnerData?,
    _i2.GDelegateCircleOwnerData?,
  )? get updateResult;
  @override
  _i2.GDelegateCircleOwnerData? get optimisticResponse;
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
  _i2.GDelegateCircleOwnerData? parseData(Map<String, dynamic> json) =>
      _i2.GDelegateCircleOwnerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDelegateCircleOwnerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GDelegateCircleOwnerData,
      _i3.GDelegateCircleOwnerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDelegateCircleOwnerReq> get serializer =>
      _$gDelegateCircleOwnerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDelegateCircleOwnerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegateCircleOwnerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDelegateCircleOwnerReq.serializer,
        json,
      );
}

abstract class GDeleteCircleReq
    implements
        Built<GDeleteCircleReq, GDeleteCircleReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteCircleData, _i3.GDeleteCircleVars> {
  GDeleteCircleReq._();

  factory GDeleteCircleReq([void Function(GDeleteCircleReqBuilder b) updates]) =
      _$GDeleteCircleReq;

  static void _initializeBuilder(GDeleteCircleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteCircle',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteCircleVars get vars;
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
  _i2.GDeleteCircleData? Function(
    _i2.GDeleteCircleData?,
    _i2.GDeleteCircleData?,
  )? get updateResult;
  @override
  _i2.GDeleteCircleData? get optimisticResponse;
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
  _i2.GDeleteCircleData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteCircleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDeleteCircleData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GDeleteCircleData, _i3.GDeleteCircleVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDeleteCircleReq> get serializer =>
      _$gDeleteCircleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteCircleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCircleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteCircleReq.serializer,
        json,
      );
}
