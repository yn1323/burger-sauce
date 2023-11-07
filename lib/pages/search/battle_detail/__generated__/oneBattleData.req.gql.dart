// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:burger_sauce/pages/search/battle_detail/__generated__/oneBattleData.ast.gql.dart'
    as _i5;
import 'package:burger_sauce/pages/search/battle_detail/__generated__/oneBattleData.data.gql.dart'
    as _i2;
import 'package:burger_sauce/pages/search/battle_detail/__generated__/oneBattleData.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'oneBattleData.req.gql.g.dart';

abstract class GOneBattleDataReq
    implements
        Built<GOneBattleDataReq, GOneBattleDataReqBuilder>,
        _i1.OperationRequest<_i2.GOneBattleDataData, _i3.GOneBattleDataVars> {
  GOneBattleDataReq._();

  factory GOneBattleDataReq([Function(GOneBattleDataReqBuilder b) updates]) =
      _$GOneBattleDataReq;

  static void _initializeBuilder(GOneBattleDataReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'OneBattleData',
    )
    ..executeOnListen = true;

  @override
  _i3.GOneBattleDataVars get vars;
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
  _i2.GOneBattleDataData? Function(
    _i2.GOneBattleDataData?,
    _i2.GOneBattleDataData?,
  )? get updateResult;
  @override
  _i2.GOneBattleDataData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GOneBattleDataData? parseData(Map<String, dynamic> json) =>
      _i2.GOneBattleDataData.fromJson(json);

  static Serializer<GOneBattleDataReq> get serializer =>
      _$gOneBattleDataReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GOneBattleDataReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOneBattleDataReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GOneBattleDataReq.serializer,
        json,
      );
}
