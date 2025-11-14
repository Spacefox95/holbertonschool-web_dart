List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((c) => (c * 9 / 5) + 32)
      .map((d) => double.parse(d.toStringAsFixed(2)))
      .toList();
}
