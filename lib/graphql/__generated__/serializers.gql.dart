// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart'
    show
        GBigInt,
        GCreateAbilityInput,
        GCreateAttackTypeInput,
        GCreateBattleDataAbilityInput,
        GCreateBattleDataInput,
        GCreateBattleDataItemInput,
        GCreateBattleDataMoveInput,
        GCreateBattleDataNatureInput,
        GCreateBattleDataTerastalInput,
        GCreateBattleIndexInput,
        GCreateEvolutionInput,
        GCreateFormInput,
        GCreateItemInput,
        GCreateMoveInput,
        GCreateMyEnemyInput,
        GCreateMyEnemyTagInput,
        GCreateMyPartyInput,
        GCreateMyPartyTagInput,
        GCreateMyPokemonConsInput,
        GCreateMyPokemonInput,
        GCreateMyPokemonProsInput,
        GCreateMyPokemonTagInput,
        GCreateNatureInput,
        GCreatePokemonInput,
        GCreateTypeInput,
        GCreateTypeRelationInput,
        GCreateUserInput,
        GDate,
        GDateTime,
        GJSON,
        GJSONObject,
        GPokemonSearchOption,
        GTime,
        GUpdateAbilityInput,
        GUpdateAttackTypeInput,
        GUpdateBattleDataAbilityInput,
        GUpdateBattleDataInput,
        GUpdateBattleDataItemInput,
        GUpdateBattleDataMoveInput,
        GUpdateBattleDataNatureInput,
        GUpdateBattleDataTerastalInput,
        GUpdateBattleIndexInput,
        GUpdateEvolutionInput,
        GUpdateFormInput,
        GUpdateItemInput,
        GUpdateMoveInput,
        GUpdateMyEnemyInput,
        GUpdateMyEnemyTagInput,
        GUpdateMyPartyInput,
        GUpdateMyPartyTagInput,
        GUpdateMyPokemonConsInput,
        GUpdateMyPokemonInput,
        GUpdateMyPokemonProsInput,
        GUpdateMyPokemonTagInput,
        GUpdateNatureInput,
        GUpdatePokemonInput,
        GUpdateTypeInput,
        GUpdateTypeRelationInput,
        GUpdateUserInput;
import 'package:burger_sauce/pages/search/battle_detail/__generated__/oneBattleData.data.gql.dart'
    show
        GOneBattleDataData,
        GOneBattleDataData_battleData,
        GOneBattleDataData_battleData_battleDataAbility,
        GOneBattleDataData_battleData_battleDataAbility_ability,
        GOneBattleDataData_battleData_battleDataItem,
        GOneBattleDataData_battleData_battleDataItem_item,
        GOneBattleDataData_battleData_battleDataMove,
        GOneBattleDataData_battleData_battleDataMove_move,
        GOneBattleDataData_battleData_battleDataMove_move_attackType,
        GOneBattleDataData_battleData_battleDataMove_move_type,
        GOneBattleDataData_battleData_battleDataNature,
        GOneBattleDataData_battleData_battleDataNature_nature,
        GOneBattleDataData_battleData_battleDataTerastal,
        GOneBattleDataData_battleData_battleDataTerastal_type,
        GOneBattleDataData_battleData_pokemon;
import 'package:burger_sauce/pages/search/battle_detail/__generated__/oneBattleData.req.gql.dart'
    show GOneBattleDataReq;
import 'package:burger_sauce/pages/search/battle_detail/__generated__/oneBattleData.var.gql.dart'
    show GOneBattleDataVars;
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.data.gql.dart'
    show
        GOnePokemonDataData,
        GOnePokemonDataData_pokemon,
        GOnePokemonDataData_pokemon_abilities,
        GOnePokemonDataData_pokemon_evolutionFrom,
        GOnePokemonDataData_pokemon_evolutionFrom_pokemon,
        GOnePokemonDataData_pokemon_evolutionTo,
        GOnePokemonDataData_pokemon_evolutionTo_pokemon,
        GOnePokemonDataData_pokemon_moves,
        GOnePokemonDataData_pokemon_moves_attackType,
        GOnePokemonDataData_pokemon_moves_type,
        GOnePokemonDataData_pokemon_types;
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.req.gql.dart'
    show GOnePokemonDataReq;
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.var.gql.dart'
    show GOnePokemonDataVars;
import 'package:burger_sauce/pages/search/pokemon_simple_detail/__generated__/onePokemonSimple.data.gql.dart'
    show
        GOnePokemonSimpleDataData,
        GOnePokemonSimpleDataData_pokemon,
        GOnePokemonSimpleDataData_pokemon_abilities,
        GOnePokemonSimpleDataData_pokemon_moves,
        GOnePokemonSimpleDataData_pokemon_moves_attackType,
        GOnePokemonSimpleDataData_pokemon_moves_type,
        GOnePokemonSimpleDataData_pokemon_types;
import 'package:burger_sauce/pages/search/pokemon_simple_detail/__generated__/onePokemonSimple.req.gql.dart'
    show GOnePokemonSimpleDataReq;
import 'package:burger_sauce/pages/search/pokemon_simple_detail/__generated__/onePokemonSimple.var.gql.dart'
    show GOnePokemonSimpleDataVars;
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.data.gql.dart'
    show
        GSearchPokemonData,
        GSearchPokemonData_abilities,
        GSearchPokemonData_moves,
        GSearchPokemonData_pokemonList,
        GSearchPokemonData_pokemonSearch,
        GSearchPokemonData_types;
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.req.gql.dart'
    show GSearchPokemonReq;
import 'package:burger_sauce/pages/top/search/__generated__/searchPokemon.var.gql.dart'
    show GSearchPokemonVars;
import 'package:burger_sauce/pages/top/trend/__generated__/latestBattleData.data.gql.dart'
    show
        GLatestBattleDataIndexData,
        GLatestBattleDataIndexData_battleDatasLatest,
        GLatestBattleDataIndexData_battleDatasLatest_battleDatas,
        GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon;
import 'package:burger_sauce/pages/top/trend/__generated__/latestBattleData.req.gql.dart'
    show GLatestBattleDataIndexReq;
import 'package:burger_sauce/pages/top/trend/__generated__/latestBattleData.var.gql.dart'
    show GLatestBattleDataIndexVars;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GBigInt,
  GCreateAbilityInput,
  GCreateAttackTypeInput,
  GCreateBattleDataAbilityInput,
  GCreateBattleDataInput,
  GCreateBattleDataItemInput,
  GCreateBattleDataMoveInput,
  GCreateBattleDataNatureInput,
  GCreateBattleDataTerastalInput,
  GCreateBattleIndexInput,
  GCreateEvolutionInput,
  GCreateFormInput,
  GCreateItemInput,
  GCreateMoveInput,
  GCreateMyEnemyInput,
  GCreateMyEnemyTagInput,
  GCreateMyPartyInput,
  GCreateMyPartyTagInput,
  GCreateMyPokemonConsInput,
  GCreateMyPokemonInput,
  GCreateMyPokemonProsInput,
  GCreateMyPokemonTagInput,
  GCreateNatureInput,
  GCreatePokemonInput,
  GCreateTypeInput,
  GCreateTypeRelationInput,
  GCreateUserInput,
  GDate,
  GDateTime,
  GJSON,
  GJSONObject,
  GLatestBattleDataIndexData,
  GLatestBattleDataIndexData_battleDatasLatest,
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas,
  GLatestBattleDataIndexData_battleDatasLatest_battleDatas_pokemon,
  GLatestBattleDataIndexReq,
  GLatestBattleDataIndexVars,
  GOneBattleDataData,
  GOneBattleDataData_battleData,
  GOneBattleDataData_battleData_battleDataAbility,
  GOneBattleDataData_battleData_battleDataAbility_ability,
  GOneBattleDataData_battleData_battleDataItem,
  GOneBattleDataData_battleData_battleDataItem_item,
  GOneBattleDataData_battleData_battleDataMove,
  GOneBattleDataData_battleData_battleDataMove_move,
  GOneBattleDataData_battleData_battleDataMove_move_attackType,
  GOneBattleDataData_battleData_battleDataMove_move_type,
  GOneBattleDataData_battleData_battleDataNature,
  GOneBattleDataData_battleData_battleDataNature_nature,
  GOneBattleDataData_battleData_battleDataTerastal,
  GOneBattleDataData_battleData_battleDataTerastal_type,
  GOneBattleDataData_battleData_pokemon,
  GOneBattleDataReq,
  GOneBattleDataVars,
  GOnePokemonDataData,
  GOnePokemonDataData_pokemon,
  GOnePokemonDataData_pokemon_abilities,
  GOnePokemonDataData_pokemon_evolutionFrom,
  GOnePokemonDataData_pokemon_evolutionFrom_pokemon,
  GOnePokemonDataData_pokemon_evolutionTo,
  GOnePokemonDataData_pokemon_evolutionTo_pokemon,
  GOnePokemonDataData_pokemon_moves,
  GOnePokemonDataData_pokemon_moves_attackType,
  GOnePokemonDataData_pokemon_moves_type,
  GOnePokemonDataData_pokemon_types,
  GOnePokemonDataReq,
  GOnePokemonDataVars,
  GOnePokemonSimpleDataData,
  GOnePokemonSimpleDataData_pokemon,
  GOnePokemonSimpleDataData_pokemon_abilities,
  GOnePokemonSimpleDataData_pokemon_moves,
  GOnePokemonSimpleDataData_pokemon_moves_attackType,
  GOnePokemonSimpleDataData_pokemon_moves_type,
  GOnePokemonSimpleDataData_pokemon_types,
  GOnePokemonSimpleDataReq,
  GOnePokemonSimpleDataVars,
  GPokemonSearchOption,
  GSearchPokemonData,
  GSearchPokemonData_abilities,
  GSearchPokemonData_moves,
  GSearchPokemonData_pokemonList,
  GSearchPokemonData_pokemonSearch,
  GSearchPokemonData_types,
  GSearchPokemonReq,
  GSearchPokemonVars,
  GTime,
  GUpdateAbilityInput,
  GUpdateAttackTypeInput,
  GUpdateBattleDataAbilityInput,
  GUpdateBattleDataInput,
  GUpdateBattleDataItemInput,
  GUpdateBattleDataMoveInput,
  GUpdateBattleDataNatureInput,
  GUpdateBattleDataTerastalInput,
  GUpdateBattleIndexInput,
  GUpdateEvolutionInput,
  GUpdateFormInput,
  GUpdateItemInput,
  GUpdateMoveInput,
  GUpdateMyEnemyInput,
  GUpdateMyEnemyTagInput,
  GUpdateMyPartyInput,
  GUpdateMyPartyTagInput,
  GUpdateMyPokemonConsInput,
  GUpdateMyPokemonInput,
  GUpdateMyPokemonProsInput,
  GUpdateMyPokemonTagInput,
  GUpdateNatureInput,
  GUpdatePokemonInput,
  GUpdateTypeInput,
  GUpdateTypeRelationInput,
  GUpdateUserInput,
])
final Serializers serializers = _serializersBuilder.build();
