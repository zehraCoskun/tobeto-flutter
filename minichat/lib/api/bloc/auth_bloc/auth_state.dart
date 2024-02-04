abstract class AuthState {
  final bool isLoading;

  AuthState({
    required this.isLoading,
  });
}

class AuthStateLoggedIn extends AuthState {
  AuthStateLoggedIn({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

class AuthStateLoggedOut extends AuthState {
  AuthStateLoggedOut({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

class AuthRegistered extends AuthState {
  AuthRegistered({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

class AuthStateError extends AuthState {
  AuthStateError({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

class AuthStateSuccess extends AuthState {
  AuthStateSuccess({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}