abstract class AuthState {}

class AuthStateInitialize extends AuthState {}

class AuthStateRegistering extends AuthState {}

class AuthStateRegistered extends AuthState {
  final String id;

  AuthStateRegistered({required this.id});
}
