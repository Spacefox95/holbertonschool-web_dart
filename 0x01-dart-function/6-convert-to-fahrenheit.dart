List<double> convertToF(List<double> temperaturesInC) {
  var newTemp = temperaturesInC.map((e) => (e * 9 / 5) + 32);
  return newTemp.toList();
}
