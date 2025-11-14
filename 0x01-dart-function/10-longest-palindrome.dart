import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) return "none";

  String longest = "";
  for (int start = 0; start < s.length; start++) {
    for (int end = start + 2; end < s.length; end++) {
      String sub = s.substring(start, end + 1);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }
  return longest.isEmpty ? "none" : longest;
}
