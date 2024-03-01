List<String> generateOptions(int length, int initialValue, int step) {
  return List.generate(length, (index) => '${initialValue + index * step}');
}
