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
import 'package:burger_sauce/pages/__generated__/pokemons.data.gql.dart'
    show GPokemonsData, GPokemonsData_pokemons;
import 'package:burger_sauce/pages/__generated__/pokemons.req.gql.dart'
    show GPokemonsReq;
import 'package:burger_sauce/pages/__generated__/pokemons.var.gql.dart'
    show GPokemonsVars;
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.data.gql.dart'
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
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.req.gql.dart'
    show GOneBattleDataReq;
import 'package:burger_sauce/pages/search/battle_data/__generated__/oneBattleData.var.gql.dart'
    show GOneBattleDataVars;
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.data.gql.dart'
    show
        GOnePokemonDataData,
        GOnePokemonDataData_pokemon,
        GOnePokemonDataData_pokemon_abilities,
        GOnePokemonDataData_pokemon_evolutions,
        GOnePokemonDataData_pokemon_evolutions_from,
        GOnePokemonDataData_pokemon_evolutions_to,
        GOnePokemonDataData_pokemon_evolutions_to_types,
        GOnePokemonDataData_pokemon_moves,
        GOnePokemonDataData_pokemon_moves_attackType,
        GOnePokemonDataData_pokemon_moves_type,
        GOnePokemonDataData_pokemon_types;
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.req.gql.dart'
    show GOnePokemonDataReq;
import 'package:burger_sauce/pages/search/pokemon_detail/__generated__/onePokemon.var.gql.dart'
    show GOnePokemonDataVars;
import 'package:burger_sauce/pages/top/trend/schema/__generated__/schema.data.gql.dart'
    show
        GLatestBattleDataIndexData,
        GLatestBattleDataIndexData_battleDatasLatest,
        GLatestBattleDataIndexData_battleDatasLatest_pokemon;
import 'package:burger_sauce/pages/top/trend/schema/__generated__/schema.req.gql.dart'
    show GLatestBattleDataIndexReq;
import 'package:burger_sauce/pages/top/trend/schema/__generated__/schema.var.gql.dart'
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
  GLatestBattleDataIndexData_battleDatasLatest_pokemon,
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
  GOnePokemonDataData_pokemon_evolutions,
  GOnePokemonDataData_pokemon_evolutions_from,
  GOnePokemonDataData_pokemon_evolutions_to,
  GOnePokemonDataData_pokemon_evolutions_to_types,
  GOnePokemonDataData_pokemon_moves,
  GOnePokemonDataData_pokemon_moves_attackType,
  GOnePokemonDataData_pokemon_moves_type,
  GOnePokemonDataData_pokemon_types,
  GOnePokemonDataReq,
  GOnePokemonDataVars,
  GPokemonsData,
  GPokemonsData_pokemons,
  GPokemonsReq,
  GPokemonsVars,
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
