class AlignmentVariation {
  final String? variationName;
  final FrontAlignment frontAlignment;
  final RearAlignment rearAlignment;

  AlignmentVariation({
    this.variationName,
    required this.frontAlignment,
    required this.rearAlignment,
  });
}

class FrontAlignment {
  final AlignmentSpecification camber;
  final AlignmentSpecification caster;
  final AlignmentSpecification toe;

  FrontAlignment(this.camber, this.caster, this.toe);
}

class RearAlignment {
  final AlignmentSpecification camber;
  final AlignmentSpecification toe;

  RearAlignment(this.camber, this.toe);
}

class AlignmentSpecification {
  final SpecificationMeasure standard;
  final SpecificationMeasure tolerance;
  final SpecificationMeasure min;
  final SpecificationMeasure max;

  AlignmentSpecification(
    this.standard,
    this.tolerance,
    this.min,
    this.max,
  );
}

class SpecificationMeasure {
  final String unit;
  final String sign;
  final double? value1;
  final double? value2;

  SpecificationMeasure({
    required this.unit,
    required this.sign,
    this.value1,
    this.value2,
  });
}
