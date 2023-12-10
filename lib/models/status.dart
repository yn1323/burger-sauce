class Status {
  Status({
    required this.statusH,
    required this.statusA,
    required this.statusB,
    required this.statusC,
    required this.statusD,
    required this.statusS,
    this.ivH = 31,
    this.ivA = 31,
    this.ivB = 31,
    this.ivC = 31,
    this.ivD = 31,
    this.ivS = 31,
    this.evH = 0,
    this.evA = 0,
    this.evB = 0,
    this.evC = 0,
    this.evD = 0,
    this.evS = 0,
    this.isHIncrease = false,
    this.isAIncrease = false,
    this.isBIncrease = false,
    this.isCIncrease = false,
    this.isDIncrease = false,
    this.isSIncrease = false,
    this.isHDecrease = false,
    this.isADecrease = false,
    this.isBDecrease = false,
    this.isCDecrease = false,
    this.isDDecrease = false,
    this.isSDecrease = false,
    this.statusRankH = 0,
    this.statusRankA = 0,
    this.statusRankB = 0,
    this.statusRankC = 0,
    this.statusRankD = 0,
    this.statusRankS = 0,
  });

  final int statusH;
  final int statusA;
  final int statusB;
  final int statusC;
  final int statusD;
  final int statusS;
  final int ivH;
  final int ivA;
  final int ivB;
  final int ivC;
  final int ivD;
  final int ivS;
  int evH;
  int evA;
  int evB;
  int evC;
  int evD;
  int evS;
  final bool isHIncrease;
  final bool isAIncrease;
  final bool isBIncrease;
  final bool isCIncrease;
  final bool isDIncrease;
  final bool isSIncrease;
  final bool isHDecrease;
  final bool isADecrease;
  final bool isBDecrease;
  final bool isCDecrease;
  final bool isDDecrease;
  final bool isSDecrease;
  final int statusRankH;
  final int statusRankA;
  final int statusRankB;
  final int statusRankC;
  final int statusRankD;
  final int statusRankS;

  int getStatus(String label) {
    if (label == "H") {
      return statusH;
    } else if (label == "A") {
      return statusA;
    } else if (label == "B") {
      return statusB;
    } else if (label == "C") {
      return statusC;
    } else if (label == "D") {
      return statusD;
    } else if (label == "S") {
      return statusS;
    } else {
      return 0;
    }
  }

  int getIv(String label) {
    if (label == "H") {
      return ivH;
    } else if (label == "A") {
      return ivA;
    } else if (label == "B") {
      return ivB;
    } else if (label == "C") {
      return ivC;
    } else if (label == "D") {
      return ivD;
    } else if (label == "S") {
      return ivS;
    } else {
      return 0;
    }
  }

  int getEv(String label) {
    if (label == "H") {
      return evH;
    } else if (label == "A") {
      return evA;
    } else if (label == "B") {
      return evB;
    } else if (label == "C") {
      return evC;
    } else if (label == "D") {
      return evD;
    } else if (label == "S") {
      return evS;
    } else {
      return 0;
    }
  }

  bool getIsIncreaseNature(String label) {
    if (label == "A") {
      return isAIncrease;
    } else if (label == "B") {
      return isBIncrease;
    } else if (label == "C") {
      return isCIncrease;
    } else if (label == "D") {
      return isDIncrease;
    } else if (label == "S") {
      return isSIncrease;
    } else {
      return false;
    }
  }

  bool getIsDecreaseNature(String label) {
    if (label == "A") {
      return isADecrease;
    } else if (label == "B") {
      return isBDecrease;
    } else if (label == "C") {
      return isCDecrease;
    } else if (label == "D") {
      return isDDecrease;
    } else if (label == "S") {
      return isSDecrease;
    } else {
      return false;
    }
  }

  int getRealStatus({required String label}) {
    return getRealStatusBase(
      label: label,
      iv: getIv(label),
      ev: getEv(label),
      isIncreaseNature: getIsIncreaseNature(label),
      isDecreaseNature: getIsDecreaseNature(label),
    );
  }

  int getRealStatusBase({
    required String label,
    int iv = 0,
    int ev = 0,
    bool isIncreaseNature = false,
    bool isDecreaseNature = false,
  }) {
    final status = getStatus(label);

    if (label == "H") {
      return (status + iv / 2 + ev / 8 + 60).floor();
    } else {
      final natureValue = isIncreaseNature
          ? 1.1
          : isDecreaseNature
              ? 0.9
              : 1.0;

      return ((((status * 2 + iv + ev / 4) * 50 / 100 + 5)).floor() *
              natureValue)
          .floor();
    }
  }

  Map<String, int> getStatusPattern({required String label}) {
    return {
      'max': getRealStatusBase(
        label: label,
        iv: 31,
        ev: 252,
        isIncreaseNature: true,
      ),
      'semiMax': getRealStatusBase(
        label: label,
        iv: 31,
        ev: 252,
      ),
      'neutral': getRealStatusBase(
        label: label,
        iv: 31,
      ),
      'semiMin': getRealStatusBase(
        label: label,
        iv: 31,
        isDecreaseNature: true,
      ),
      'min': getRealStatusBase(
        label: label,
        iv: 0,
        isDecreaseNature: true,
      ),
    };
  }

  Map<String, Map<String, int>> getStatusPatterns() {
    return {
      'H': getStatusPattern(label: 'H'),
      'A': getStatusPattern(label: 'A'),
      'B': getStatusPattern(label: 'B'),
      'C': getStatusPattern(label: 'C'),
      'D': getStatusPattern(label: 'D'),
      'S': getStatusPattern(label: 'S'),
    };
  }

  Map<String, int> getCalculatedStatus() {
    return {
      'H': getRealStatusBase(label: 'H', iv: ivH, ev: evH),
      'A': getRealStatusBase(
        label: 'A',
        iv: ivA,
        ev: evA,
        isIncreaseNature: isAIncrease,
        isDecreaseNature: isADecrease,
      ),
      'B': getRealStatusBase(
        label: 'B',
        iv: ivB,
        ev: evB,
        isIncreaseNature: isBIncrease,
        isDecreaseNature: isBDecrease,
      ),
      'C': getRealStatusBase(
        label: 'C',
        iv: ivC,
        ev: evC,
        isIncreaseNature: isCIncrease,
        isDecreaseNature: isCDecrease,
      ),
      'D': getRealStatusBase(
        label: 'D',
        iv: ivD,
        ev: evD,
        isIncreaseNature: isDIncrease,
        isDecreaseNature: isDDecrease,
      ),
      'S': getRealStatusBase(
        label: 'S',
        iv: ivS,
        ev: evS,
        isIncreaseNature: isSIncrease,
        isDecreaseNature: isSDecrease,
      ),
    };
  }
}
