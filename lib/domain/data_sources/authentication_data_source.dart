import '../entities/user.dart';

abstract class AuthenticationDataSource {
  Future<User> authenticate(String email, String password);

  Future<User> updateUser(User user);
  Future<User> getUser(String id);
}
