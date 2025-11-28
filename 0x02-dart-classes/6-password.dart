class Password {
  String _password;

  Password({String? password}) : _password = password ?? '';

  String get password => _password;

  set password(String? value) {
    _password = value ?? '';
  }

  bool isValid() {
    if (_password.length <= 8 || _password.length >= 16) {
      return false;
    }

    bool hasUppercase = false;
    bool hasDigit = false;

    for (int i = 0; i < _password.length; i++) {
      String ch = _password[i];

      if (ch == ch.toUpperCase() && ch != ch.toLowerCase()) {
        hasUppercase = true;
      }

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
