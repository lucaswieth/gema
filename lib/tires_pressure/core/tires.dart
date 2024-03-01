class Tire {
  final TireDimensions dimensions;
  final NormalTire? normalTire;
  final SpareTire? spareTire;

  Tire({
    required this.dimensions,
    this.normalTire,
    this.spareTire,
  });

  String get specification {
    return '${dimensions.width}/${dimensions.aspectRatio} ${dimensions.construction} ${dimensions.rimDiameter}"';
  }
}

class NormalTire {
  final TireStandardPressure? tireStandardPressure;
  final TireLoadlessPressure? tireLoadlessPressure;
  final TireLoadfulPressure? tireLoadfulPressure;
  final TireEconomicPressure? tireEconomicPressure;

  NormalTire({
    this.tireStandardPressure,
    this.tireLoadlessPressure,
    this.tireLoadfulPressure,
    this.tireEconomicPressure,
  });
}

class SpareTire {
  final SpareTirePressure? spareTirePressure;

  SpareTire({
    this.spareTirePressure,
  });
}

class TireDimensions {
  final int width;
  final int aspectRatio;
  final String construction;
  final double rimDiameter;

  TireDimensions({
    required this.width,
    required this.aspectRatio,
    required this.construction,
    required this.rimDiameter,
  });
}

class TireStandardPressure {
  final double? frontWheels;
  final double? rearWheels;

  TireStandardPressure({this.frontWheels, this.rearWheels});
}

class TireLoadlessPressure {
  final double? frontWheels;
  final double? rearWheels;

  TireLoadlessPressure({this.frontWheels, this.rearWheels});
}

class TireLoadfulPressure {
  final double? frontWheels;
  final double? rearWheels;

  TireLoadfulPressure({this.frontWheels, this.rearWheels});
}

class TireEconomicPressure {
  final double? frontWheels;
  final double? rearWheels;

  TireEconomicPressure({this.frontWheels, this.rearWheels});
}

class SpareTirePressure {
  final double? pressure;

  SpareTirePressure({this.pressure});
}
