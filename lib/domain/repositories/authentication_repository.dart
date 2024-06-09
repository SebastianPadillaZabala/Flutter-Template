import '../models/authentication_model.dart';

abstract class AuthenticationRepository {
  Future<AuthenticationModel> signIn(String email, String password);
}
