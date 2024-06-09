class User {
  final int? id;
  final String email;
  final String? password;
  final String name;
  final String? rol;
  final String accessToken;

  User(
      {this.id,
      required this.email,
      this.password,
      required this.name,
      required this.rol,
      required this.accessToken});

  @override
  String toString() {
    return 'User(id: $id, email: $email, nombre: $name, rol: $rol, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.email == email &&
        other.name == name &&
        other.rol == rol &&
        other.accessToken == accessToken;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        email.hashCode ^
        name.hashCode ^
        rol.hashCode ^
        accessToken.hashCode;
  }
}
