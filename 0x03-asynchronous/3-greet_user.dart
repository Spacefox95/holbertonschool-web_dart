import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final userName = jsonDecode(userData);
    return 'Hello ${userName['username']}';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    final cred = await checkCredentials();
    if (cred == true) {
      print('There is a user: true');
      return greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (err) {
    return 'error caught: $err';
  }
}
