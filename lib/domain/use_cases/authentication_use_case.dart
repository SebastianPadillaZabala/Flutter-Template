import '../models/authentication_model.dart';

abstract class AuthenticationUseCase {
  Future<AuthenticationModel> signIn(String email, String password);
}
