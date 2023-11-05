// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:burger_sauce/pages/search/search_list/__generated__/searchPokemon.ast.gql.dart'
    as _i5;
import 'package:burger_sauce/pages/search/search_list/__generated__/searchPokemon.data.gql.dart'
    as _i2;
import 'package:burger_sauce/pages/search/search_list/__generated__/searchPokemon.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'searchPokemon.req.gql.g.dart';

abstract class GSearchPokemonReq
    implements
        Built<GSearchPokemonReq, GSearchPokemonReqBuilder>,
        _i1.OperationRequest<_i2.GSearchPokemonData, _i3.GSearchPokemonVars> {
  GSearchPokemonReq._();

  factory GSearchPokemonReq([Function(GSearchPokemonReqBuilder b) updates]) =
      _$GSearchPokemonReq;

  static void _initializeBuilder(GSearchPokemonReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SearchPokemon',
    )
    ..executeOnListen = true;

  @override
  _i3.GSearchPokemonVars get vars;
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
  _i2.GSearchPokemonData? Function(
    _i2.GSearchPokemonData?,
    _i2.GSearchPokemonData?,
  )? get updateResult;
  @override
  _i2.GSearchPokemonData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSearchPokemonData? parseData(Map<String, dynamic> json) =>
      _i2.GSearchPokemonData.fromJson(json);

  static Serializer<GSearchPokemonReq> get serializer =>
      _$gSearchPokemonReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSearchPokemonReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchPokemonReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSearchPokemonReq.serializer,
        json,
      );
}
