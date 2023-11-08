// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GBigInt.serializer)
      ..add(GCreateAbilityInput.serializer)
      ..add(GCreateAttackTypeInput.serializer)
      ..add(GCreateBattleDataAbilityInput.serializer)
      ..add(GCreateBattleDataInput.serializer)
      ..add(GCreateBattleDataItemInput.serializer)
      ..add(GCreateBattleDataMoveInput.serializer)
      ..add(GCreateBattleDataNatureInput.serializer)
      ..add(GCreateBattleDataTerastalInput.serializer)
      ..add(GCreateBattleIndexInput.serializer)
      ..add(GCreateEvolutionInput.serializer)
      ..add(GCreateFormInput.serializer)
      ..add(GCreateItemInput.serializer)
      ..add(GCreateMoveInput.serializer)
      ..add(GCreateMyEnemyInput.serializer)
      ..add(GCreateMyEnemyTagInput.serializer)
      ..add(GCreateMyPartyInput.serializer)
      ..add(GCreateMyPartyTagInput.serializer)
      ..add(GCreateMyPokemonConsInput.serializer)
      ..add(GCreateMyPokemonInput.serializer)
      ..add(GCreateMyPokemonProsInput.serializer)
      ..add(GCreateMyPokemonTagInput.serializer)
      ..add(GCreateNatureInput.serializer)
      ..add(GCreatePokemonInput.serializer)
      ..add(GCreateTypeInput.serializer)
      ..add(GCreateTypeRelationInput.serializer)
      ..add(GCreateUserInput.serializer)
      ..add(GDate.serializer)
      ..add(GDateTime.serializer)
      ..add(GJSON.serializer)
      ..add(GJSONObject.serializer)
      ..add(GLatestBattleDataIndexData.serializer)
      ..add(GLatestBattleDataIndexData_battleDatasLatest.serializer)
      ..add(GLatestBattleDataIndexData_battleDatasLatest_pokemon.serializer)
      ..add(GLatestBattleDataIndexReq.serializer)
      ..add(GLatestBattleDataIndexVars.serializer)
      ..add(GOneBattleDataData.serializer)
      ..add(GOneBattleDataData_battleData.serializer)
      ..add(GOneBattleDataData_battleData_battleDataAbility.serializer)
      ..add(GOneBattleDataData_battleData_battleDataAbility_ability.serializer)
      ..add(GOneBattleDataData_battleData_battleDataItem.serializer)
      ..add(GOneBattleDataData_battleData_battleDataItem_item.serializer)
      ..add(GOneBattleDataData_battleData_battleDataMove.serializer)
      ..add(GOneBattleDataData_battleData_battleDataMove_move.serializer)
      ..add(GOneBattleDataData_battleData_battleDataMove_move_attackType
          .serializer)
      ..add(GOneBattleDataData_battleData_battleDataMove_move_type.serializer)
      ..add(GOneBattleDataData_battleData_battleDataNature.serializer)
      ..add(GOneBattleDataData_battleData_battleDataNature_nature.serializer)
      ..add(GOneBattleDataData_battleData_battleDataTerastal.serializer)
      ..add(GOneBattleDataData_battleData_battleDataTerastal_type.serializer)
      ..add(GOneBattleDataData_battleData_pokemon.serializer)
      ..add(GOneBattleDataReq.serializer)
      ..add(GOneBattleDataVars.serializer)
      ..add(GOnePokemonDataData.serializer)
      ..add(GOnePokemonDataData_pokemon.serializer)
      ..add(GOnePokemonDataData_pokemon_abilities.serializer)
      ..add(GOnePokemonDataData_pokemon_evolutionFrom.serializer)
      ..add(GOnePokemonDataData_pokemon_evolutionFrom_pokemon.serializer)
      ..add(GOnePokemonDataData_pokemon_evolutionTo.serializer)
      ..add(GOnePokemonDataData_pokemon_evolutionTo_pokemon.serializer)
      ..add(GOnePokemonDataData_pokemon_moves.serializer)
      ..add(GOnePokemonDataData_pokemon_moves_attackType.serializer)
      ..add(GOnePokemonDataData_pokemon_moves_type.serializer)
      ..add(GOnePokemonDataData_pokemon_types.serializer)
      ..add(GOnePokemonDataReq.serializer)
      ..add(GOnePokemonDataVars.serializer)
      ..add(GOnePokemonSimpleDataData.serializer)
      ..add(GOnePokemonSimpleDataData_pokemon.serializer)
      ..add(GOnePokemonSimpleDataData_pokemon_abilities.serializer)
      ..add(GOnePokemonSimpleDataData_pokemon_moves.serializer)
      ..add(GOnePokemonSimpleDataData_pokemon_moves_attackType.serializer)
      ..add(GOnePokemonSimpleDataData_pokemon_moves_type.serializer)
      ..add(GOnePokemonSimpleDataData_pokemon_types.serializer)
      ..add(GOnePokemonSimpleDataReq.serializer)
      ..add(GOnePokemonSimpleDataVars.serializer)
      ..add(GPokemonSearchOption.serializer)
      ..add(GSearchPokemonData.serializer)
      ..add(GSearchPokemonData_abilities.serializer)
      ..add(GSearchPokemonData_moves.serializer)
      ..add(GSearchPokemonData_pokemonList.serializer)
      ..add(GSearchPokemonData_pokemonSearch.serializer)
      ..add(GSearchPokemonData_types.serializer)
      ..add(GSearchPokemonReq.serializer)
      ..add(GSearchPokemonVars.serializer)
      ..add(GTime.serializer)
      ..add(GUpdateAbilityInput.serializer)
      ..add(GUpdateAttackTypeInput.serializer)
      ..add(GUpdateBattleDataAbilityInput.serializer)
      ..add(GUpdateBattleDataInput.serializer)
      ..add(GUpdateBattleDataItemInput.serializer)
      ..add(GUpdateBattleDataMoveInput.serializer)
      ..add(GUpdateBattleDataNatureInput.serializer)
      ..add(GUpdateBattleDataTerastalInput.serializer)
      ..add(GUpdateBattleIndexInput.serializer)
      ..add(GUpdateEvolutionInput.serializer)
      ..add(GUpdateFormInput.serializer)
      ..add(GUpdateItemInput.serializer)
      ..add(GUpdateMoveInput.serializer)
      ..add(GUpdateMyEnemyInput.serializer)
      ..add(GUpdateMyEnemyTagInput.serializer)
      ..add(GUpdateMyPartyInput.serializer)
      ..add(GUpdateMyPartyTagInput.serializer)
      ..add(GUpdateMyPokemonConsInput.serializer)
      ..add(GUpdateMyPokemonInput.serializer)
      ..add(GUpdateMyPokemonProsInput.serializer)
      ..add(GUpdateMyPokemonTagInput.serializer)
      ..add(GUpdateNatureInput.serializer)
      ..add(GUpdatePokemonInput.serializer)
      ..add(GUpdateTypeInput.serializer)
      ..add(GUpdateTypeRelationInput.serializer)
      ..add(GUpdateUserInput.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GLatestBattleDataIndexData_battleDatasLatest)
          ]),
          () => new ListBuilder<GLatestBattleDataIndexData_battleDatasLatest>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataAbility)
          ]),
          () => new ListBuilder<
              GOneBattleDataData_battleData_battleDataAbility>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataItem)
          ]),
          () => new ListBuilder<GOneBattleDataData_battleData_battleDataItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataMove)
          ]),
          () => new ListBuilder<GOneBattleDataData_battleData_battleDataMove>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataNature)
          ]),
          () =>
              new ListBuilder<GOneBattleDataData_battleData_battleDataNature>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GOneBattleDataData_battleData_battleDataTerastal)
          ]),
          () => new ListBuilder<
              GOneBattleDataData_battleData_battleDataTerastal>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_evolutionTo)]),
          () => new ListBuilder<GOnePokemonDataData_pokemon_evolutionTo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GOnePokemonDataData_pokemon_evolutionFrom)
          ]),
          () => new ListBuilder<GOnePokemonDataData_pokemon_evolutionFrom>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_abilities)]),
          () => new ListBuilder<GOnePokemonDataData_pokemon_abilities>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_moves)]),
          () => new ListBuilder<GOnePokemonDataData_pokemon_moves>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOnePokemonDataData_pokemon_types)]),
          () => new ListBuilder<GOnePokemonDataData_pokemon_types>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GOnePokemonSimpleDataData_pokemon_abilities)
          ]),
          () => new ListBuilder<GOnePokemonSimpleDataData_pokemon_abilities>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOnePokemonSimpleDataData_pokemon_moves)]),
          () => new ListBuilder<GOnePokemonSimpleDataData_pokemon_moves>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GOnePokemonSimpleDataData_pokemon_types)]),
          () => new ListBuilder<GOnePokemonSimpleDataData_pokemon_types>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSearchPokemonData_pokemonSearch)]),
          () => new ListBuilder<GSearchPokemonData_pokemonSearch>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSearchPokemonData_types)]),
          () => new ListBuilder<GSearchPokemonData_types>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSearchPokemonData_abilities)]),
          () => new ListBuilder<GSearchPokemonData_abilities>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSearchPokemonData_moves)]),
          () => new ListBuilder<GSearchPokemonData_moves>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSearchPokemonData_pokemonList)]),
          () => new ListBuilder<GSearchPokemonData_pokemonList>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
