import 'package:burger_sauce/models/battle_condition.dart';
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
    BattleCondition? battleCondition,
  })  : id = id ?? UniqueKey(),
        status = status ??
            Status(
              statusA: 0,
              statusB: 0,
              statusC: 0,
              statusD: 0,
              statusH: 0,
              statusS: 0,
            ),
        battleCondition = battleCondition ?? BattleCondition();

  String pokemonId;
  List<String> moveIds;
  String abilityId;
  String terastalId;
  String itemId;
  String natureId;

  UniqueKey id;

  Status status;
  BattleCondition battleCondition;
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
    required this.pokemonInfo,
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
  Map<String, PokemonInfo> pokemonInfo;
}

class MoveType {
  MoveType({required this.type, required this.attackType});
  GDamageCalcSummaryData_types type;
  GDamageCalcSummaryData_attackTypes attackType;
}

class PokemonInfo {
  PokemonInfo({required this.abilities, required this.moves});
  List<GDamageCalcSummaryData_abilities> abilities;
  List<GDamageCalcSummaryData_moves> moves;
}

class UpdateTarget {
  UpdateTarget(
      {required this.targetBase, required this.target, required this.tabType});
  List<DamageCustomBase> targetBase;
  DamageCustomBase target;
  String tabType;
}

class UsedItem {
  UsedItem({required this.itemId, required this.total});

  int total;
  String itemId;
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
  List<UsedItem> usedItems = [];

  Map<String, PokemonInfo> pokemonInfo = {};
  List<DamageCustomBase> attackBase = [];
  List<DamageCustomBase> defenseBase = [];

  @override
  CalcState build() => CalcState(
        pokemons: pokemons,
        battleDatas: battleDatas,
        attackTypes: attackTypes,
        abilities: abilities,
        moves: moves,
        natures: natures,
        pokemonInfo: pokemonInfo,
        attackBase: attackBase,
        defenseBase: defenseBase,
      );

  void update(
      {List<GDamageCalcSummaryData_pokemons>? pokemons,
      List<GDamageCalcSummaryData_battleDatasLatest_battleDatas>? battleDatas,
      List<GDamageCalcSummaryData_attackTypes>? attackTypes,
      List<GDamageCalcSummaryData_abilities>? abilities,
      List<GDamageCalcSummaryData_moves>? moves,
      List<GDamageCalcSummaryData_natures>? natures,
      List<GDamageCalcSummaryData_types>? types,
      List<GDamageCalcSummaryData_items>? items,
      List<DamageCustomBase>? attackBase,
      List<DamageCustomBase>? defenseBase,
      Map<String, PokemonInfo>? pokemonInfo}) {
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
      pokemonInfo: pokemonInfo ?? this.pokemonInfo,
    );
  }

  void updateSummary(GDamageCalcSummaryData value) {
    battleDatas = value.battleDatasLatest?.battleDatas.toList();
    attackTypes = value.attackTypes.toList();
    abilities = value.abilities.toList();
    moves = value.moves.toList();
    natures = value.natures.toList();
    types = value.types.toList();

    final allUsedItems = battleDatas!.fold<
            List<
                GDamageCalcSummaryData_battleDatasLatest_battleDatas_battleDataItem>>(
        [], (value, e) {
      return [...value, ...e.battleDataItem.toList()];
    });

    final usedItemsTotal = allUsedItems.fold<List<UsedItem>>([], (acc, e) {
      if (acc.any((ac) => ac.itemId == e.itemId)) {
        return acc
            .map((ac) => ac.itemId == e.itemId
                ? UsedItem(itemId: ac.itemId, total: ac.total + 1)
                : ac)
            .toList();
      }
      return [...acc, UsedItem(itemId: e.itemId, total: 1)];
    }).toList();

    usedItemsTotal.sort((a, b) => b.total - a.total);
    usedItems = usedItemsTotal;

    items = value.items.toList();
    items!.sort((a, b) => a.order - b.order);

    final battleDataPokemonIds = battleDatas!.map((e) => e.pokemonId);

    final pokemonsList = value.pokemons.toList();

    final notFoundInBattlePokemons = pokemonsList
        .where((pokemon) => !battleDataPokemonIds.contains(pokemon.id));

    final foundPokemons = battleDataPokemonIds
        .map((battlePokemonId) =>
            pokemonsList.firstWhere((pokemon) => pokemon.id == battlePokemonId))
        .toList();

    pokemons = [...foundPokemons, ...notFoundInBattlePokemons];
  }

  void addDetail(GDamageCalcDetailData value) {
    final targetPokemonInfo = value;

    final battleData = getBattleData(pokemonId: targetPokemonInfo.pokemon!.id);

    final battleDataMoveIds = battleData != null
        ? battleData.battleDataMove.map((e) => e.moveId).toList()
        : [] as List<String>;

    final battleDataAbilityIds = battleData != null
        ? battleData.battleDataAbility.map((e) => e.abilityId).toList()
        : [] as List<String>;

    final moveIds = targetPokemonInfo.pokemon!.moves.map((e) => e.id).toList();

    final abilityList = battleDataAbilityIds
        .map((id) => abilities!.firstWhere((f) => id == f.id))
        .toList();

    final battleMoves = battleDataMoveIds
        .map((id) => moves!.firstWhere((f) => id == f.id))
        .toList();
    final nonBattleMoves = moves!
        .where(
            (e) => moveIds.contains(e.id) && !battleDataMoveIds.contains(e.id))
        .toList();

    final moveList = [...battleMoves, ...nonBattleMoves].toList();

    final nextPokemonInfo = pokemonInfo;

    nextPokemonInfo[targetPokemonInfo.pokemon!.id] =
        PokemonInfo(abilities: abilityList, moves: moveList);

    update(pokemonInfo: nextPokemonInfo);
  }

  List<String> get attackTypeIdOfAttack {
    return attackTypes!
        .where((e) => e.name == "物理" || e.name == "特殊")
        .map((e) => e.id)
        .toList();
  }

  DamageCustomBase makeEmptyDamageCustomBase(String pokemonId) {
    final pokemon = getPokemon(id: pokemonId);

    return DamageCustomBase(
      id: UniqueKey(),
      pokemonId: pokemonId,
      moveIds: [],
      abilityId: '',
      terastalId: '',
      itemId: '',
      natureId: '',
      status: Status(
        statusH: pokemon.statusH,
        statusA: pokemon.statusA,
        statusB: pokemon.statusB,
        statusC: pokemon.statusC,
        statusD: pokemon.statusD,
        statusS: pokemon.statusS,
      ),
    );
  }

  DamageCustomBase makeDamageCustomBase(
      GDamageCalcSummaryData_battleDatasLatest_battleDatas battleData) {
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
        id: UniqueKey(),
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

  DamageCustomBase getDamageCustomBase({required String pokemonId}) {
    final hasBattleData = battleDatas!.any((e) => e.pokemonId == pokemonId);

    if (!hasBattleData) {
      return makeEmptyDamageCustomBase(pokemonId);
    }

    final battleData = battleDatas!.firstWhere((e) => e.pokemonId == pokemonId);
    return makeDamageCustomBase(battleData);
  }

  DamageCustomBase getNonDuplicateCustomBase(
      [List<String> avoidPokemonIds = const []]) {
    final battleData =
        battleDatas!.firstWhere((e) => !avoidPokemonIds.contains(e.pokemonId));
    return makeDamageCustomBase(battleData);
  }

  void addBase({required String type}) {
    if (type == "attack") {
      final nextAttackBase = [
        ...state.attackBase,
        getNonDuplicateCustomBase(
            state.attackBase.map((e) => e.pokemonId).toList()),
      ];
      update(attackBase: nextAttackBase);
      attackBase = nextAttackBase;
    } else {
      final nextDefenseBase = [
        ...state.defenseBase,
        getNonDuplicateCustomBase(
            state.defenseBase.map((e) => e.pokemonId).toList()),
      ];
      update(defenseBase: nextDefenseBase);
      defenseBase = nextDefenseBase;
    }
  }

  void removeBase({required String type, required int index}) {
    if (type == "attack") {
      final newAttackBase = state.attackBase;
      newAttackBase.removeAt(index);
      update(attackBase: newAttackBase);
    } else {
      final newDefenseBase = state.defenseBase;
      newDefenseBase.removeAt(index);
      update(defenseBase: newDefenseBase);
    }
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

  MoveType getMoveType({required String id}) {
    final move = moves!.firstWhere((e) => e.id == id);
    final type = types!.firstWhere((e) => e.id == move.typeId!);
    final attackType =
        attackTypes!.firstWhere((e) => e.id == move.attackTypeId!);

    return MoveType(type: type, attackType: attackType);
  }

  GDamageCalcSummaryData_battleDatasLatest_battleDatas? getBattleData(
      {required String pokemonId}) {
    if (!battleDatas!.any((e) => e.pokemonId == pokemonId)) {
      return null;
    }
    return battleDatas!.firstWhere((e) => e.pokemonId == pokemonId);
  }

  UpdateTarget getUpdateTarget(UniqueKey id) {
    final tabType =
        state.attackBase.any((e) => e.id == id) ? "attack" : "defense";

    final targetBase =
        tabType == "attack" ? state.attackBase : state.defenseBase;
    final index = targetBase.indexWhere((e) => e.id == id);
    final target = targetBase[index];

    return UpdateTarget(
      targetBase: targetBase,
      target: target,
      tabType: tabType,
    );
  }

  void updateEv(
      {required String type, required int ev, required UniqueKey id}) {
    final updateTarget = getUpdateTarget(id);

    switch (type) {
      case "H":
        updateTarget.target.status.evH = ev;
        break;
      case "A":
        updateTarget.target.status.evA = ev;
        break;
      case "B":
        updateTarget.target.status.evB = ev;
        break;
      case "C":
        updateTarget.target.status.evC = ev;
        break;
      case "D":
        updateTarget.target.status.evD = ev;
        break;
      case "S":
        updateTarget.target.status.evS = ev;
        break;
    }

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void updateNature(
      {required UniqueKey id,
      required String increase,
      required String decrease}) {
    final updateTarget = getUpdateTarget(id);

    updateTarget.target.status
        .updateNature(increase: increase, decrease: decrease);

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void updateAbility({required UniqueKey id, required String nextAbilityId}) {
    final updateTarget = getUpdateTarget(id);

    updateTarget.target.abilityId = nextAbilityId;

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void updateTerastal({required UniqueKey id, required String nextTerastalId}) {
    final updateTarget = getUpdateTarget(id);

    updateTarget.target.terastalId = nextTerastalId;

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void updateItem({required UniqueKey id, required String nextItemId}) {
    final updateTarget = getUpdateTarget(id);

    updateTarget.target.itemId = nextItemId;

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void addMove({required UniqueKey id, required String addMoveId}) {
    final updateTarget = getUpdateTarget(id);

    if (updateTarget.target.moveIds.length > maxMoves) return;

    updateTarget.target.moveIds.add(addMoveId);

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void removeMove({required UniqueKey id, required String removeMoveId}) {
    final updateTarget = getUpdateTarget(id);

    updateTarget.target.moveIds.remove(removeMoveId);

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void updateCalcAll(
      List<GDamageCalcSummaryData_myDamageCalcIndex_myDamageCalc> calcs) {
    final sortedCalcs = calcs..sort((a, b) => a.order.compareTo(b.order));
    final attacks = sortedCalcs.where((calc) => calc.side == "attack").toList();
    final defenses =
        sortedCalcs.where((calc) => calc.side == "defense").toList();

    final newAttackBase = attacks.map((e) {
      final pokemon = getPokemon(id: e.pokemonId);
      final nature = getNature(id: e.natureId);

      return DamageCustomBase(
        id: UniqueKey(),
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
        id: UniqueKey(),
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
    attackBase = newAttackBase.toList();
    defenseBase = newDefenseBase.toList();
  }

  void replaceBase(
      {required DamageCustomBase before, required DamageCustomBase after}) {
    final tabType =
        state.attackBase.any((e) => e.id == before.id) ? "attack" : "defense";

    final targetBase =
        tabType == "attack" ? state.attackBase : state.defenseBase;
    final index = targetBase.indexWhere((e) => e.id == before.id);
    targetBase[index] = after;

    if (tabType == "attack") {
      update(attackBase: targetBase);
    } else {
      update(defenseBase: targetBase);
    }
  }

  void updateRank(
      {required UniqueKey id, required String status, required int nextRank}) {
    final updateTarget = getUpdateTarget(id);

    if (status == "A") {
      updateTarget.target.status.statusRankA = nextRank;
    } else if (status == "B") {
      updateTarget.target.status.statusRankB = nextRank;
    } else if (status == "C") {
      updateTarget.target.status.statusRankC = nextRank;
    } else if (status == "D") {
      updateTarget.target.status.statusRankD = nextRank;
    } else if (status == "S") {
      updateTarget.target.status.statusRankS = nextRank;
    }
    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }

  void updateCondition(
      {required UniqueKey id,
      required String battleCondition,
      required dynamic next}) {
    final updateTarget = getUpdateTarget(id);

    if (battleCondition == 'isBurn') {
      updateTarget.target.battleCondition.isBurn = next;
    } else if (battleCondition == 'isCharge') {
      updateTarget.target.battleCondition.isCharge = next;
    } else if (battleCondition == 'isCritical') {
      updateTarget.target.battleCondition.isCritical = next;
    } else if (battleCondition == 'weather') {
      updateTarget.target.battleCondition.weather = next;
    } else if (battleCondition == 'field') {
      updateTarget.target.battleCondition.field = next;
    } else if (battleCondition == 'hasReflect') {
      updateTarget.target.battleCondition.hasReflect = next;
    } else if (battleCondition == 'hasLightScreen') {
      updateTarget.target.battleCondition.hasLightScreen = next;
    } else if (battleCondition == 'extraDamageStealthRock') {
      updateTarget.target.battleCondition.extraDamageStealthRock = next;
    } else if (battleCondition == 'extraDamageDisguise') {
      updateTarget.target.battleCondition.extraDamageDisguise = next;
    } else if (battleCondition == 'extraDamageRockyHelmet') {
      updateTarget.target.battleCondition.extraDamageRockyHelmet = next;
    } else if (battleCondition == 'extraDamageLifeOrb') {
      updateTarget.target.battleCondition.extraDamageLifeOrb = next;
    }

    if (updateTarget.tabType == "attack") {
      update(attackBase: updateTarget.targetBase);
    } else {
      update(defenseBase: updateTarget.targetBase);
    }
  }
}
