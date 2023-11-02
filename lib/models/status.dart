class Status {
  Status({
    required this.statusH,
    required this.statusA,
    required this.statusB,
    required this.statusC,
    required this.statusD,
    required this.statusS,
  });

  final int statusH;
  final int statusA;
  final int statusB;
  final int statusC;
  final int statusD;
  final int statusS;

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
    int individualValue = 0,
    int effortValue = 0,
    bool isIncreaseNature = false,
    bool isDecreaseNature = false,
  }) {
    final status = getStatus(label);

    if (label == "H") {
      return (status + individualValue / 2 + effortValue / 8 + 60).floor();
    } else {
      final natureValue = isIncreaseNature
          ? 1.1
          : isDecreaseNature
              ? 0.9
              : 1.0;

      return ((((status * 2 + individualValue + effortValue / 4) * 50 / 100 +
                      5))
                  .floor() *
              natureValue)
          .floor();
    }
  }

  Map<String, int> getStatusPattern({required String label}) {
    return {
      'max': getRealStatus(
        label: label,
        individualValue: 31,
        effortValue: 252,
        isIncreaseNature: true,
      ),
      'semiMax': getRealStatus(
        label: label,
        individualValue: 31,
        effortValue: 252,
      ),
      'neutral': getRealStatus(
        label: label,
        individualValue: 31,
      ),
      'semiMin': getRealStatus(
        label: label,
        individualValue: 31,
        isDecreaseNature: true,
      ),
      'min': getRealStatus(
        label: label,
        individualValue: 0,
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
}
