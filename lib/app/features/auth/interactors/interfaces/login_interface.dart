import '../state/login_state.dart';

abstract interface class LoginInterface {
  Future<LoginState> signIn();
}
