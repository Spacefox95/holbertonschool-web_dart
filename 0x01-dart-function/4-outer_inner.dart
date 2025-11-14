void outer(String name, String id) {
  List str1 = name.split(' ');
  String firstname = str1[1];
  print('${inner()} ${firstname[0]}.${str1[0]} your id is ${id}');
}

String inner() {
  return ('Hello Agent');
}
