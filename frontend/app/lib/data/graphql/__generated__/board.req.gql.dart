// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/data/graphql/__generated__/board.ast.gql.dart' as _i5;
import 'package:app/data/graphql/__generated__/board.data.gql.dart' as _i2;
import 'package:app/data/graphql/__generated__/board.var.gql.dart' as _i3;
import 'package:app/data/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'board.req.gql.g.dart';

abstract class GGetCircleBoardsReq
    implements
        Built<GGetCircleBoardsReq, GGetCircleBoardsReqBuilder>,
        _i1
        .OperationRequest<_i2.GGetCircleBoardsData, _i3.GGetCircleBoardsVars> {
  GGetCircleBoardsReq._();

  factory GGetCircleBoardsReq(
          [void Function(GGetCircleBoardsReqBuilder b) updates]) =
      _$GGetCircleBoardsReq;

  static void _initializeBuilder(GGetCircleBoardsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetCircleBoards',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetCircleBoardsVars get vars;
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
  _i2.GGetCircleBoardsData? Function(
    _i2.GGetCircleBoardsData?,
    _i2.GGetCircleBoardsData?,
  )? get updateResult;
  @override
  _i2.GGetCircleBoardsData? get optimisticResponse;
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
  _i2.GGetCircleBoardsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCircleBoardsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetCircleBoardsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetCircleBoardsData, _i3.GGetCircleBoardsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetCircleBoardsReq> get serializer =>
      _$gGetCircleBoardsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetCircleBoardsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCircleBoardsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetCircleBoardsReq.serializer,
        json,
      );
}

abstract class GGetBoardPostsReq
    implements
        Built<GGetBoardPostsReq, GGetBoardPostsReqBuilder>,
        _i1.OperationRequest<_i2.GGetBoardPostsData, _i3.GGetBoardPostsVars> {
  GGetBoardPostsReq._();

  factory GGetBoardPostsReq(
          [void Function(GGetBoardPostsReqBuilder b) updates]) =
      _$GGetBoardPostsReq;

  static void _initializeBuilder(GGetBoardPostsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetBoardPosts',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetBoardPostsVars get vars;
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
  _i2.GGetBoardPostsData? Function(
    _i2.GGetBoardPostsData?,
    _i2.GGetBoardPostsData?,
  )? get updateResult;
  @override
  _i2.GGetBoardPostsData? get optimisticResponse;
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
  _i2.GGetBoardPostsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetBoardPostsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetBoardPostsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetBoardPostsData, _i3.GGetBoardPostsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetBoardPostsReq> get serializer =>
      _$gGetBoardPostsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetBoardPostsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBoardPostsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetBoardPostsReq.serializer,
        json,
      );
}

abstract class GCreateBoardReq
    implements
        Built<GCreateBoardReq, GCreateBoardReqBuilder>,
        _i1.OperationRequest<_i2.GCreateBoardData, _i3.GCreateBoardVars> {
  GCreateBoardReq._();

  factory GCreateBoardReq([void Function(GCreateBoardReqBuilder b) updates]) =
      _$GCreateBoardReq;

  static void _initializeBuilder(GCreateBoardReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateBoard',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateBoardVars get vars;
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
  _i2.GCreateBoardData? Function(
    _i2.GCreateBoardData?,
    _i2.GCreateBoardData?,
  )? get updateResult;
  @override
  _i2.GCreateBoardData? get optimisticResponse;
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
  _i2.GCreateBoardData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateBoardData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateBoardData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateBoardData, _i3.GCreateBoardVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateBoardReq> get serializer =>
      _$gCreateBoardReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateBoardReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBoardReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateBoardReq.serializer,
        json,
      );
}

abstract class GChangeBoardTopicReq
    implements
        Built<GChangeBoardTopicReq, GChangeBoardTopicReqBuilder>,
        _i1.OperationRequest<_i2.GChangeBoardTopicData,
            _i3.GChangeBoardTopicVars> {
  GChangeBoardTopicReq._();

  factory GChangeBoardTopicReq(
          [void Function(GChangeBoardTopicReqBuilder b) updates]) =
      _$GChangeBoardTopicReq;

  static void _initializeBuilder(GChangeBoardTopicReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ChangeBoardTopic',
    )
    ..executeOnListen = true;

  @override
  _i3.GChangeBoardTopicVars get vars;
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
  _i2.GChangeBoardTopicData? Function(
    _i2.GChangeBoardTopicData?,
    _i2.GChangeBoardTopicData?,
  )? get updateResult;
  @override
  _i2.GChangeBoardTopicData? get optimisticResponse;
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
  _i2.GChangeBoardTopicData? parseData(Map<String, dynamic> json) =>
      _i2.GChangeBoardTopicData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GChangeBoardTopicData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GChangeBoardTopicData, _i3.GChangeBoardTopicVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GChangeBoardTopicReq> get serializer =>
      _$gChangeBoardTopicReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GChangeBoardTopicReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardTopicReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GChangeBoardTopicReq.serializer,
        json,
      );
}

abstract class GChangeBoardStatusReq
    implements
        Built<GChangeBoardStatusReq, GChangeBoardStatusReqBuilder>,
        _i1.OperationRequest<_i2.GChangeBoardStatusData,
            _i3.GChangeBoardStatusVars> {
  GChangeBoardStatusReq._();

  factory GChangeBoardStatusReq(
          [void Function(GChangeBoardStatusReqBuilder b) updates]) =
      _$GChangeBoardStatusReq;

  static void _initializeBuilder(GChangeBoardStatusReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ChangeBoardStatus',
    )
    ..executeOnListen = true;

  @override
  _i3.GChangeBoardStatusVars get vars;
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
  _i2.GChangeBoardStatusData? Function(
    _i2.GChangeBoardStatusData?,
    _i2.GChangeBoardStatusData?,
  )? get updateResult;
  @override
  _i2.GChangeBoardStatusData? get optimisticResponse;
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
  _i2.GChangeBoardStatusData? parseData(Map<String, dynamic> json) =>
      _i2.GChangeBoardStatusData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GChangeBoardStatusData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GChangeBoardStatusData, _i3.GChangeBoardStatusVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GChangeBoardStatusReq> get serializer =>
      _$gChangeBoardStatusReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GChangeBoardStatusReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeBoardStatusReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GChangeBoardStatusReq.serializer,
        json,
      );
}

abstract class GAddBoardPostReq
    implements
        Built<GAddBoardPostReq, GAddBoardPostReqBuilder>,
        _i1.OperationRequest<_i2.GAddBoardPostData, _i3.GAddBoardPostVars> {
  GAddBoardPostReq._();

  factory GAddBoardPostReq([void Function(GAddBoardPostReqBuilder b) updates]) =
      _$GAddBoardPostReq;

  static void _initializeBuilder(GAddBoardPostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AddBoardPost',
    )
    ..executeOnListen = true;

  @override
  _i3.GAddBoardPostVars get vars;
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
  _i2.GAddBoardPostData? Function(
    _i2.GAddBoardPostData?,
    _i2.GAddBoardPostData?,
  )? get updateResult;
  @override
  _i2.GAddBoardPostData? get optimisticResponse;
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
  _i2.GAddBoardPostData? parseData(Map<String, dynamic> json) =>
      _i2.GAddBoardPostData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAddBoardPostData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GAddBoardPostData, _i3.GAddBoardPostVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAddBoardPostReq> get serializer =>
      _$gAddBoardPostReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAddBoardPostReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddBoardPostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAddBoardPostReq.serializer,
        json,
      );
}

abstract class GDeleteBoardReq
    implements
        Built<GDeleteBoardReq, GDeleteBoardReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteBoardData, _i3.GDeleteBoardVars> {
  GDeleteBoardReq._();

  factory GDeleteBoardReq([void Function(GDeleteBoardReqBuilder b) updates]) =
      _$GDeleteBoardReq;

  static void _initializeBuilder(GDeleteBoardReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteBoard',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteBoardVars get vars;
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
  _i2.GDeleteBoardData? Function(
    _i2.GDeleteBoardData?,
    _i2.GDeleteBoardData?,
  )? get updateResult;
  @override
  _i2.GDeleteBoardData? get optimisticResponse;
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
  _i2.GDeleteBoardData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteBoardData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDeleteBoardData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GDeleteBoardData, _i3.GDeleteBoardVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDeleteBoardReq> get serializer =>
      _$gDeleteBoardReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteBoardReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteBoardReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteBoardReq.serializer,
        json,
      );
}
