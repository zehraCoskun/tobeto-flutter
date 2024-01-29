import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_event.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_state.dart';
import 'package:minichat/api/request/auth_request/auth_register_request.dart';
import 'package:minichat/api/request/user_request/user_create_request.dart';
import 'package:minichat/api/service/auth_service.dart';
import 'package:minichat/api/service/user_service.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final UserService _userService;

  AuthBloc(this._authService, this._userService) : super(AuthStateInitialize()) {
    on<AuthEventRegister>((event, emit) => _onRegister(event.request, emit));
  }

  void _onRegister(AuthRegisterRequest request, Emitter<AuthState> emit) async {
    emit(AuthStateRegistering());

    final result = await _authService.register(request.email, request.password);
    final id = await _userService.create(
      UserCreateRequest(id: result!, fullName: request.fullName, email: request.email, imageUrl: request.imageUrl),
    );

    emit(AuthStateRegistered(id: id!));
  }
}
