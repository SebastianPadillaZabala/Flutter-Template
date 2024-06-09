import 'package:shared_preferences/shared_preferences.dart';

import '../../config/dio_config.dart';
import '../../domain/data_sources/authentication_data_source.dart';
import '../../domain/entities/user.dart';

import '../models/user_model_mapper.dart';

class AuthenticationDataSourceImpl implements AuthenticationDataSource {
  AuthenticationDataSourceImpl();

  @override
  Future<User> authenticate(String email, String password) async {
    try {
      final response = await DioConfig.dioWithoutAuthorization.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      var data = response.data['data'];

      User user = UserModelMapper.fromJson(data);

      if (user.rol != "Vendedor") {
        throw Exception('Error: Solo los Clientes pueden acceder.');
      }

      return user;
    } catch (e) {
      throw Exception('Error de autenticación');
    }
  }

  @override
  Future<User> getUser(String id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<User> updateUser(User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
