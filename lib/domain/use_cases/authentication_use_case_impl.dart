import '../models/authentication_model.dart';
import 'authentication_use_case.dart';
import '../repositories/authentication_repository.dart';

class AuthenticationUseCaseImpl implements AuthenticationUseCase {
  final AuthenticationRepository _authenticationRepository;

  AuthenticationUseCaseImpl(this._authenticationRepository);

  @override
  Future<AuthenticationModel> signIn(String email, String password) async {
    return _authenticationRepository.signIn(email, password);
  }
}
