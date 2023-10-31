// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:burger_sauce/pages/top/trend/__generated__/schema.ast.gql.dart'
    as _i5;
import 'package:burger_sauce/pages/top/trend/__generated__/schema.data.gql.dart'
    as _i2;
import 'package:burger_sauce/pages/top/trend/__generated__/schema.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'schema.req.gql.g.dart';

abstract class GLatestBattleDataIndexReq
    implements
        Built<GLatestBattleDataIndexReq, GLatestBattleDataIndexReqBuilder>,
        _i1.OperationRequest<_i2.GLatestBattleDataIndexData,
            _i3.GLatestBattleDataIndexVars> {
  GLatestBattleDataIndexReq._();

  factory GLatestBattleDataIndexReq(
          [Function(GLatestBattleDataIndexReqBuilder b) updates]) =
      _$GLatestBattleDataIndexReq;

  static void _initializeBuilder(GLatestBattleDataIndexReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'LatestBattleDataIndex',
    )
    ..executeOnListen = true;

  @override
  _i3.GLatestBattleDataIndexVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GLatestBattleDataIndexData? Function(
    _i2.GLatestBattleDataIndexData?,
    _i2.GLatestBattleDataIndexData?,
  )? get updateResult;
  @override
  _i2.GLatestBattleDataIndexData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GLatestBattleDataIndexData? parseData(Map<String, dynamic> json) =>
      _i2.GLatestBattleDataIndexData.fromJson(json);

  static Serializer<GLatestBattleDataIndexReq> get serializer =>
      _$gLatestBattleDataIndexReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLatestBattleDataIndexReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLatestBattleDataIndexReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLatestBattleDataIndexReq.serializer,
        json,
      );
}
