import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> printRmCharacters() async {
  try {
    var url = Uri.https("rickandmortyapi.com", "api/character");
    final response = await http.get(url);
    var dedodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    var characterResults = dedodedResponse['results'];
    for (final name in characterResults) {
      final characterName = name['name'];
      print(characterName);
    }
  } catch (err) {
    return 'error caught: $err';
  }
  return '';
}
