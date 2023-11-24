// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.ast.gql.dart'
    as _i5;
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart'
    as _i2;
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'calcDamage.req.gql.g.dart';

abstract class GDamageCalcSummaryReq
    implements
        Built<GDamageCalcSummaryReq, GDamageCalcSummaryReqBuilder>,
        _i1.OperationRequest<_i2.GDamageCalcSummaryData,
            _i3.GDamageCalcSummaryVars> {
  GDamageCalcSummaryReq._();

  factory GDamageCalcSummaryReq(
          [Function(GDamageCalcSummaryReqBuilder b) updates]) =
      _$GDamageCalcSummaryReq;

  static void _initializeBuilder(GDamageCalcSummaryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DamageCalcSummary',
    )
    ..executeOnListen = true;

  @override
  _i3.GDamageCalcSummaryVars get vars;
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
  _i2.GDamageCalcSummaryData? Function(
    _i2.GDamageCalcSummaryData?,
    _i2.GDamageCalcSummaryData?,
  )? get updateResult;
  @override
  _i2.GDamageCalcSummaryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDamageCalcSummaryData? parseData(Map<String, dynamic> json) =>
      _i2.GDamageCalcSummaryData.fromJson(json);

  static Serializer<GDamageCalcSummaryReq> get serializer =>
      _$gDamageCalcSummaryReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDamageCalcSummaryReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcSummaryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDamageCalcSummaryReq.serializer,
        json,
      );
}

abstract class GDamageCalcDetailReq
    implements
        Built<GDamageCalcDetailReq, GDamageCalcDetailReqBuilder>,
        _i1.OperationRequest<_i2.GDamageCalcDetailData,
            _i3.GDamageCalcDetailVars> {
  GDamageCalcDetailReq._();

  factory GDamageCalcDetailReq(
          [Function(GDamageCalcDetailReqBuilder b) updates]) =
      _$GDamageCalcDetailReq;

  static void _initializeBuilder(GDamageCalcDetailReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DamageCalcDetail',
    )
    ..executeOnListen = true;

  @override
  _i3.GDamageCalcDetailVars get vars;
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
  _i2.GDamageCalcDetailData? Function(
    _i2.GDamageCalcDetailData?,
    _i2.GDamageCalcDetailData?,
  )? get updateResult;
  @override
  _i2.GDamageCalcDetailData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDamageCalcDetailData? parseData(Map<String, dynamic> json) =>
      _i2.GDamageCalcDetailData.fromJson(json);

  static Serializer<GDamageCalcDetailReq> get serializer =>
      _$gDamageCalcDetailReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDamageCalcDetailReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDamageCalcDetailReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDamageCalcDetailReq.serializer,
        json,
      );
}
