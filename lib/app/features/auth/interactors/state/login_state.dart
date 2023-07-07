import '../exceptions/login_exception.dart';

sealed class LoginState {
  final String email;
  final String password;
  final bool loading;
  final LoginException? exception;

  const LoginState({
    required this.email,
    required this.password,
    this.loading = false,
    this.exception,
  });

  factory LoginState.init() => const InitLoginState();

  LoginState setEmail(String email) =>
      UpdatedLoginState(email: email, password: password);

  LoginState setPassword(String password) =>
      UpdatedLoginState(email: email, password: password);

  LoginState setLoading(bool value) =>
      LoadingLoginState(email: email, password: password, loading: value);

  LoginState setException(LoginException exception) => ExceptionLoginState(
      email: email, password: password, exception: exception);
}

class InitLoginState extends LoginState {
  const InitLoginState() : super(email: "", password: "");
}

class UpdatedLoginState extends LoginState {
  const UpdatedLoginState({required super.email, required super.password});
}

class LoadingLoginState extends LoginState {
  const LoadingLoginState(
      {required super.email, required super.password, super.loading = true});
}

class ExceptionLoginState extends LoginState {
  ExceptionLoginState({
    required super.email,
    required super.password,
    required super.exception,
  });
}
