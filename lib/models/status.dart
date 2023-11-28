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
  final int evH;
  final int evA;
  final int evB;
  final int evC;
  final int evD;
  final int evS;
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

  int getRealStatus({
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
      'max': getRealStatus(
        label: label,
        iv: 31,
        ev: 252,
        isIncreaseNature: true,
      ),
      'semiMax': getRealStatus(
        label: label,
        iv: 31,
        ev: 252,
      ),
      'neutral': getRealStatus(
        label: label,
        iv: 31,
      ),
      'semiMin': getRealStatus(
        label: label,
        iv: 31,
        isDecreaseNature: true,
      ),
      'min': getRealStatus(
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
      'H': getRealStatus(label: 'H', iv: ivH, ev: evH),
      'A': getRealStatus(
        label: 'A',
        iv: ivA,
        ev: evA,
        isIncreaseNature: isAIncrease,
        isDecreaseNature: isADecrease,
      ),
      'B': getRealStatus(
        label: 'B',
        iv: ivB,
        ev: evB,
        isIncreaseNature: isBIncrease,
        isDecreaseNature: isBDecrease,
      ),
      'C': getRealStatus(
        label: 'C',
        iv: ivC,
        ev: evC,
        isIncreaseNature: isCIncrease,
        isDecreaseNature: isCDecrease,
      ),
      'D': getRealStatus(
        label: 'D',
        iv: ivD,
        ev: evD,
        isIncreaseNature: isDIncrease,
        isDecreaseNature: isDDecrease,
      ),
      'S': getRealStatus(
        label: 'S',
        iv: ivS,
        ev: evS,
        isIncreaseNature: isSIncrease,
        isDecreaseNature: isSDecrease,
      ),
    };
  }
}
