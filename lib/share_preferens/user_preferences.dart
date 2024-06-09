import '../domain/entities/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._internal();
  late SharedPreferences _prefs;

  factory UserPreferences() => _instance;

  UserPreferences._internal();

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences get prefs => _prefs;

  String get accessToken => _prefs.getString('accessToken') ?? '';
  int get id => _prefs.getInt('id') ?? 0;
  String get email => _prefs.getString('email') ?? '';
  String get name => _prefs.getString('name') ?? '';
  String get rol => _prefs.getString('rol') ?? '';

  set accessToken(String accessToken) =>
      _prefs.setString('accessToken', accessToken);
  set id(int id) => _prefs.setInt('id', id);
  set email(String email) => _prefs.setString('email', email);
  set name(String name) => _prefs.setString('name', name);
  set rol(String rol) => _prefs.setString('rol', rol);

  static void saveUserPreferences(User data) {
    final prefs = UserPreferences();

    prefs.accessToken = data.accessToken;
    prefs.id = data.id ?? 0;
    prefs.email = data.email;
    prefs.name = data.name;
    prefs.rol = data.rol!;
  }

  void clearUser() {
    _prefs.setString('accessToken', '');
    _prefs.setInt('id', 0);
    _prefs.setString('email', '');
    _prefs.setString('name', '');
    _prefs.setString('rol', '');
  }
}
