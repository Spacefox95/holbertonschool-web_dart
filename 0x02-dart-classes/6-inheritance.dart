import '6-password.dart';

class User extends Password {
  String name;
  int age;
  double height;
  int id;
  String user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] as int,
      name: userJson['name'] as String,
      age: userJson['age'] as int,
      height: userJson['height'] as double,
      user_password: userJson['user_password'] as String,
    );
  }

  @override
  String toString() {
    return 'User(id: ${id} ,name: ${name}, age: ${age}, height: ${height})';
  }
}
