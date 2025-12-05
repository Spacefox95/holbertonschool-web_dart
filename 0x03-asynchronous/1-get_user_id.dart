import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final userParse = jsonDecode(userData);
  return userParse['id'];
}
