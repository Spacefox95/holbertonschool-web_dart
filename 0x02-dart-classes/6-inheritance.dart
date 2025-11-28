import '6-password.dart';

class User extends Password {
  String name;
  int age;
  double height;
  int id;

  String _user_password;
  String get user_password => _user_password;

  set user_password(String newPwd) {
    _user_password = newPwd;
    super.password = newPwd; // <-- IMPORTANT
  }

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String? user_password,
  }) : _user_password = user_password ?? '',
       super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      age: json['age'] ?? 0,
      height: (json['height'] ?? 0).toDouble(),
      user_password: json['user_password'] ?? '',
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
