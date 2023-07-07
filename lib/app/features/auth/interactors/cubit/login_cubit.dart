import 'package:app_hair/app/features/auth/interactors/state/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.init());

  void saveEmail(String email) => emit(state.setEmail(email));

  void savePassword(String password) => emit(state.setPassword(password));

  Future<bool> login() async {
    try {
      emit(state.setLoading(true));
      await Future.delayed(const Duration(seconds: 3));
      emit(state.setLoading(false));
      return true;
    } catch (e) {
      print(e);
    }
    emit(state.setLoading(false));
    return false;
  }

  void dispose() {
    close();
  }
}
