import '../../domain/models/authentication_model.dart';
import '../../domain/entities/index.dart';

class UserModelMapper {
  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['user']['id'],
      email: json['user']['email'],
      password: json['user']['password'],
      name: json['user']['name'],
      rol: json['user']['rol'],
      accessToken: json['token'],
    );
  }

  static User fromJsonRegister(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      password: json['password'],
      name: json['name'],
      rol: json['rol'],
      accessToken: json['token'] ?? '',
    );
  }

  static List<User> fromJsonList(List<dynamic> json) {
    return json.map((user) => fromJson(user)).toList();
  }

  static Map<String, dynamic> toJson(User model) {
    return {
      'id': model.id ?? '',
      'email': model.email,
      // 'password': model.password ?? '',
      'name': model.name,
      'rol': model.rol,
      // 'accessToken': model.accessToken,
    };
  }

  static AuthenticationModel toAuthenticationModel(User user) {
    return AuthenticationModel(token: user.accessToken);
  }

  static User copyWith(User user,
      {int? id,
      String? email,
      String? password,
      String? name,
      String? rol,
      String? accessToken}) {
    return User(
      id: id ?? user.id,
      email: email ?? user.email,
      password: password ?? user.password,
      name: name ?? user.name,
      rol: rol ?? user.rol,
      accessToken: accessToken ?? user.accessToken,
    );
  }
}
