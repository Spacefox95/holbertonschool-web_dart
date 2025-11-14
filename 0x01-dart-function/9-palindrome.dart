bool isPalindrome(String s) {
  if (s.length < 3) return false;
  if (s.split('').reversed.join('') == s) return true;
  return false;
}
