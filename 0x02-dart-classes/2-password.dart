class Password {
  String password = '';

  bool isValid() {
    if (password.length > 8 && password.length < 16) {
      for (int i = 0; i < password.length; i++) {
        if (password[i] == password[i].toUpperCase()) {
          if (RegExp(r'\d').hasMatch(password)) {
            return true;
          }
        }
      }
    }
    return false;
  }

  @override
  String toString() {
    return 'Your Password is: ${password}';
  }
}
