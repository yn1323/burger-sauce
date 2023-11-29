import 'package:burger_sauce/models/status.dart';
import 'package:burger_sauce/pages/top/calc/__generated__/calcDamage.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calc.g.dart';

const int maxBases = 6;
const int maxMoves = 6;

class DamageCustomBase {
  DamageCustomBase({
    UniqueKey? id,
    required this.pokemonId,
    this.moveIds = const [],
    this.abilityId = '',
    this.terastalId = '',
    this.itemId = '',
    this.natureId = '',
    Status? status,
  })  : id = id ?? UniqueKey(),
        status = status ??
            Status(
              statusA: 0,
              statusB: 0,
              statusC: 0,
              statusD: 0,
              statusH: 0,
              statusS: 0,
            );

  String pokemonId;
  List<String> moveIds;
  String abilityId;
  String terastalId;
  String itemId;
  String natureId;

  UniqueKey id;

  Status status;
}

class CalcState {
  CalcState({
    this.pokemons,
    this.battleDatas,
    this.attackTypes,
    this.abilities,
    this.moves,
    this.natures,
    this.types,
    this.items,
    required this.attackBase,
    required this.defenseBase,
  });
  List<GDamageCalcSummaryData_pokemons>? pokemons;
  List<GDamageCalcSummaryData_battleDatasLatest_battleDatas>? battleDatas;
  List<GDamageCalcSummaryData_attackTypes>? attackTypes;
  List<GDamageCalcSummaryData_abilities>? abilities;
  List<GDamageCalcSummaryData_moves>? moves;
  List<GDamageCalcSummaryData_natures>? natures;
  List<GDamageCalcSummaryData_types>? types;
  List<GDamageCalcSummaryData_items>? items;

  List<DamageCustomBase> attackBase;
  List<DamageCustomBase> defenseBase;
}

@riverpod
class Calc extends _$Calc {
  List<GDamageCalcSummaryData_pokemons>? pokemons;
  List<GDamageCalcSummaryData_battleDatasLatest_battleDatas>? battleDatas;
  List<GDamageCalcSummaryData_attackTypes>? attackTypes;
  List<GDamageCalcSummaryData_abilities>? abilities;
  List<GDamageCalcSummaryData_moves>? moves;
  List<GDamageCalcSummaryData_natures>? natures;
  List<GDamageCalcSummaryData_types>? types;
  List<GDamageCalcSummaryData_items>? items;

  List<DamageCustomBase> attackBase = [];
  List<DamageCustomBase> defenseBase = [];

  @override
  CalcState build() => CalcState(
        attackBase: attackBase,
        defenseBase: defenseBase,
        pokemons: pokemons,
        battleDatas: battleDatas,
        attackTypes: attackTypes,
        abilities: abilities,
        moves: moves,
        natures: natures,
      );

  void update({
    List<GDamageCalcSummaryData_pokemons>? pokemons,
    List<GDamageCalcSummaryData_battleDatasLatest_battleDatas>? battleDatas,
    List<GDamageCalcSummaryData_attackTypes>? attackTypes,
    List<GDamageCalcSummaryData_abilities>? abilities,
    List<GDamageCalcSummaryData_moves>? moves,
    List<GDamageCalcSummaryData_natures>? natures,
    List<GDamageCalcSummaryData_types>? types,
    List<GDamageCalcSummaryData_items>? items,
    List<DamageCustomBase>? attackBase,
    List<DamageCustomBase>? defenseBase,
  }) {
    state = CalcState(
      pokemons: pokemons ?? this.pokemons,
      battleDatas: battleDatas ?? this.battleDatas,
      attackTypes: attackTypes ?? this.attackTypes,
      abilities: abilities ?? this.abilities,
      moves: moves ?? this.moves,
      natures: natures ?? this.natures,
      types: types ?? this.types,
      items: items ?? this.items,
      attackBase: attackBase ?? this.attackBase,
      defenseBase: defenseBase ?? this.defenseBase,
    );
  }

  void updateSummary(GDamageCalcSummaryData value) {
    pokemons = value.pokemons.toList();
    battleDatas = value.battleDatasLatest?.battleDatas.toList();
    attackTypes = value.attackTypes.toList();
    abilities = value.abilities.toList();
    moves = value.moves.toList();
    natures = value.natures.toList();
    types = value.types.toList();
    items = value.items.toList();
  }

  List<String> get attackTypeIdOfAttack {
    return attackTypes!
        .where((e) => e.name == "物理" || e.name == "特殊")
        .map((e) => e.id)
        .toList();
  }

  DamageCustomBase _topRankBase([List<String> avoidPokemonIds = const []]) {
    final battleData =
        battleDatas!.firstWhere((e) => !avoidPokemonIds.contains(e.pokemonId));

    final moveDatas = battleData.battleDataMove
        .map((p0) => moves!.firstWhere((move) => move.id == p0.moveId))
        .toList();

    final filteredMoves = moveDatas
        .where((e) => attackTypeIdOfAttack.contains(e.attackTypeId))
        .map((e) => e.id)
        .toList();

    final pokemon = getPokemon(id: battleData.pokemonId);
    final nature = getNature(id: battleData.battleDataNature[0].natureId);

    return DamageCustomBase(
        pokemonId: battleData.pokemonId,
        moveIds: filteredMoves.length > maxBases
            ? filteredMoves.sublist(0, maxBases)
            : filteredMoves,
        abilityId: battleData.battleDataAbility[0].abilityId,
        terastalId: battleData.battleDataTerastal[0].typeId,
        itemId: battleData.battleDataItem[0].itemId,
        natureId: battleData.battleDataNature[0].natureId,
        status: Status(
          statusH: pokemon.statusH,
          statusA: pokemon.statusA,
          statusB: pokemon.statusB,
          statusC: pokemon.statusC,
          statusD: pokemon.statusD,
          statusS: pokemon.statusS,
          isHIncrease: nature.increase.contains("H"),
          isAIncrease: nature.increase.contains("A"),
          isBIncrease: nature.increase.contains("B"),
          isCIncrease: nature.increase.contains("C"),
          isDIncrease: nature.increase.contains("D"),
          isSIncrease: nature.increase.contains("S"),
          isHDecrease: nature.decrease.contains("H"),
          isADecrease: nature.decrease.contains("A"),
          isBDecrease: nature.decrease.contains("B"),
          isCDecrease: nature.decrease.contains("C"),
          isDDecrease: nature.decrease.contains("D"),
          isSDecrease: nature.decrease.contains("S"),
        ));
  }

  void addAttackBase() {
    update(attackBase: [
      ...state.attackBase,
      _topRankBase(state.attackBase.map((e) => e.pokemonId).toList())
    ]);
  }

  GDamageCalcSummaryData_pokemons getPokemon(
      {String? id = "", String? name = ""}) {
    if (id != "") {
      return pokemons!.firstWhere((e) => e.id == id);
    }
    return pokemons!.firstWhere((e) => e.name == name);
  }

  GDamageCalcSummaryData_abilities getAbility(
      {String? id = "", String? name = ""}) {
    if (id != "") {
      return abilities!.firstWhere((e) => e.id == id);
    }
    return abilities!.firstWhere((e) => e.name == name);
  }

  GDamageCalcSummaryData_natures getNature(
      {String? id = "", String? name = ""}) {
    if (id != "") {
      return natures!.firstWhere((e) => e.id == id);
    }
    return natures!.firstWhere((e) => e.name == name);
  }

  GDamageCalcSummaryData_moves getMove({String? id = "", String? name = ""}) {
    if (id != "") {
      return moves!.firstWhere((e) => e.id == id);
    }
    return moves!.firstWhere((e) => e.name == name);
  }

  GDamageCalcSummaryData_items getItem({String? id = "", String? name = ""}) {
    if (id != "") {
      return items!.firstWhere((e) => e.id == id);
    }
    return items!.firstWhere((e) => e.name == name);
  }

  GDamageCalcSummaryData_types getType({String? id = "", String? name = ""}) {
    if (id != "") {
      return types!.firstWhere((e) => e.id == id);
    }
    return types!.firstWhere((e) => e.name == name);
  }

  GDamageCalcSummaryData_attackTypes getAttackType(
      {String? id = "", String? name = ""}) {
    if (id != "") {
      return attackTypes!.firstWhere((e) => e.id == id);
    }
    return attackTypes!.firstWhere((e) => e.name == name);
  }

  void addDefenseBase() {
    defenseBase.add(_topRankBase(defenseBase.map((e) => e.pokemonId).toList()));
  }

  void updateCalcAll(
      List<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc> calcs) {
    // TODO：ソートは適当。後で直す
    final sortedCalcs = calcs..sort((a, b) => a.order.compareTo(b.order));
    final attacks = sortedCalcs.where((calc) => calc.side == "attack").toList();
    final defenses =
        sortedCalcs.where((calc) => calc.side == "defense").toList();

    final newAttackBase = attacks.map((e) {
      final pokemon = getPokemon(id: e.pokemonId);
      final nature = getNature(id: e.natureId);

      return DamageCustomBase(
        id: null,
        pokemonId: e.pokemonId,
        moveIds: e.moves.map((p) => p.id).toList(),
        abilityId: e.abilityId ?? '',
        terastalId: e.terastalId ?? '',
        itemId: e.itemId ?? '',
        natureId: e.natureId,
        status: Status(
          statusH: pokemon.statusH,
          statusA: pokemon.statusA,
          statusB: pokemon.statusB,
          statusC: pokemon.statusC,
          statusD: pokemon.statusD,
          statusS: pokemon.statusS,
          ivH: e.ivH,
          ivA: e.ivA,
          ivB: e.ivB,
          ivC: e.ivC,
          ivD: e.ivD,
          ivS: e.ivS,
          evH: e.evH,
          evA: e.evA,
          evB: e.evB,
          evC: e.evC,
          evD: e.evD,
          evS: e.evS,
          isHIncrease: nature.increase.contains("H"),
          isAIncrease: nature.increase.contains("A"),
          isBIncrease: nature.increase.contains("B"),
          isCIncrease: nature.increase.contains("C"),
          isDIncrease: nature.increase.contains("D"),
          isSIncrease: nature.increase.contains("S"),
          isHDecrease: nature.decrease.contains("H"),
          isADecrease: nature.decrease.contains("A"),
          isBDecrease: nature.decrease.contains("B"),
          isCDecrease: nature.decrease.contains("C"),
          isDDecrease: nature.decrease.contains("D"),
          isSDecrease: nature.decrease.contains("S"),
        ),
      );
    });

    final newDefenseBase = defenses.map((e) {
      final pokemon = getPokemon(id: e.pokemonId);
      final nature = getNature(id: e.natureId);

      return DamageCustomBase(
        id: e.client as UniqueKey,
        pokemonId: e.pokemonId,
        moveIds: e.moves.map((p) => p.id).toList(),
        abilityId: e.abilityId ?? '',
        terastalId: e.terastalId ?? '',
        itemId: e.itemId ?? '',
        natureId: e.natureId,
        status: Status(
          statusH: pokemon.statusH,
          statusA: pokemon.statusA,
          statusB: pokemon.statusB,
          statusC: pokemon.statusC,
          statusD: pokemon.statusD,
          statusS: pokemon.statusS,
          ivH: e.ivH,
          ivA: e.ivA,
          ivB: e.ivB,
          ivC: e.ivC,
          ivD: e.ivD,
          ivS: e.ivS,
          evH: e.evH,
          evA: e.evA,
          evB: e.evB,
          evC: e.evC,
          evD: e.evD,
          evS: e.evS,
          isHIncrease: nature.increase.contains("H"),
          isAIncrease: nature.increase.contains("A"),
          isBIncrease: nature.increase.contains("B"),
          isCIncrease: nature.increase.contains("C"),
          isDIncrease: nature.increase.contains("D"),
          isSIncrease: nature.increase.contains("S"),
          isHDecrease: nature.decrease.contains("H"),
          isADecrease: nature.decrease.contains("A"),
          isBDecrease: nature.decrease.contains("B"),
          isCDecrease: nature.decrease.contains("C"),
          isDDecrease: nature.decrease.contains("D"),
          isSDecrease: nature.decrease.contains("S"),
        ),
      );
    });
    update(
      attackBase: newAttackBase.toList(),
      defenseBase: newDefenseBase.toList(),
    );
  }
}
