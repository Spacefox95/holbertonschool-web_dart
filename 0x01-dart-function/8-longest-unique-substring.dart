String longestUniqueSubstring(String str) {
  if (str.isEmpty) return '';

  final Set<String> unique = {};
  int start = 0;
  int bestStart = 0;
  int bestLen = 0;

  for (int end = 0; end < str.length; end++) {
    String ch = str[end];

    while (unique.contains(ch)) {
      unique.remove(str[start]);
      start++;
    }
    unique.add(ch);

    int currentLen = end - start + 1;
    if (currentLen > bestLen) {
      bestLen = currentLen;
      bestStart = start;
    }
  }
  return str.substring(bestStart, bestStart + bestLen);
}
