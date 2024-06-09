import 'package:flutter/material.dart';
import '../../domain/use_cases/authentication_use_case.dart';

class AuthenticationProvider extends ChangeNotifier {
  final AuthenticationUseCase _authenticationUseCase;

  AuthenticationProvider(this._authenticationUseCase);

  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> signIn(String email, String password) async {
    try {
      _isLoading = true;
      notifyListeners();

      await _authenticationUseCase.signIn(email, password);

      _isAuthenticated = true;
      notifyListeners();
    } catch (e) {
      _isAuthenticated = false;
      notifyListeners();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
