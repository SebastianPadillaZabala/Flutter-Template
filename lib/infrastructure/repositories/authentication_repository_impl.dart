import '../../domain/data_sources/authentication_data_source.dart';
import '../../domain/models/authentication_model.dart';
import '../../share_preferens/user_preferences.dart';
import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource _authenticationDataSource;

  AuthenticationRepositoryImpl(this._authenticationDataSource);

  @override
  Future<AuthenticationModel> signIn(String email, String password) async {
    try {

      final remoteUser = await _authenticationDataSource.authenticate(email, password);

      UserPreferences.saveUserPreferences(remoteUser);

      final authenticationModel =
          AuthenticationModel(token: remoteUser.accessToken);
      return authenticationModel;
    } catch (e) {

      throw Exception('Error de autenticación');
    }
  }
}
