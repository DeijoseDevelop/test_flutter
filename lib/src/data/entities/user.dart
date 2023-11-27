import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  final String email;
  final String password;

  User({
    required this.email,
    required this.password,
  });

  User copyWith({
    String? email,
    String? password,
  }) =>
      User(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
