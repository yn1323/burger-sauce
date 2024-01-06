class BattleCondition {
  BattleCondition({
    this.isBurn = false,
    this.isCharge = false,
    this.isCritical = false,
    this.weather = '',
    this.field = '',
    this.hasReflect = false,
    this.hasLightScreen = false,
    this.extraDamageStealthRock = false,
    this.extraDamageDisguise = false,
    this.extraDamageRockyHelmet = false,
    this.extraDamageLifeOrb = false,
  });

  bool isBurn;
  bool isCharge;
  bool isCritical;

  // harshSunlight, rain, sandstorm, hail
  String weather;
  // electric, grassy, misty, psychic
  String field;

  bool hasReflect;
  bool hasLightScreen;

  bool extraDamageStealthRock;
  // ばけのかわ
  bool extraDamageDisguise;
  // ゴツゴツメット
  bool extraDamageRockyHelmet;
  // いのちのたま
  bool extraDamageLifeOrb;
}
