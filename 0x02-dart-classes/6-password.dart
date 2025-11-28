class Password {
  String _password = '';

  Password({password}) : _password = password;

  String get password {
    return _password;
  }

  set password(String password) {
    _password = password;
  }

  bool isValid() {
    if (_password.length <= 8 || _password.length >= 16) {
      return false;
    }

    bool hasUppercase = false;
    bool hasDigit = false;

    for (int i = 0; i < _password.length; i++) {
      String ch = _password[i];

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
    return 'Your Password is: $_password';
  }
}
