import 'package:app_hair/app/features/auth/interactors/state/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.init());

  void saveEmail(String email) => emit(state.setEmail(email));

  void savePassword(String password) => emit(state.setPassword(password));

  Future<void> login() async {
    emit(state.setLoading(true));
    await Future.delayed(const Duration(seconds: 1));
    print("LOADED");
    emit(state.setLoading(false));
  }

  void dispose() {
    close();
  }
}
