sealed class LoginException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  const LoginException(this.message, [this.stackTrace]);

  @override
  String toString() {
    return "$runtimeType: $message${stackTrace == null ? '' : '\n$stackTrace'}";
  }
}
