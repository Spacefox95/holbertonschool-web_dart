class Password {
  String password = '';

  bool isValid() {
    if (password.length <= 8 || password.length >= 16) {
      return false;
    }

    bool hasUppercase = false;
    bool hasDigit = false;

    for (int i = 0; i < password.length; i++) {
      String ch = password[i];

      // Check uppercase letter: ch is same as uppercase AND different from lowercase
      if (ch == ch.toUpperCase() && ch != ch.toLowerCase()) {
        hasUppercase = true;
      }

      // Check digit
      if (RegExp(r'\d').hasMatch(ch)) {
        hasDigit = true;
      }
    }

    return hasUppercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
