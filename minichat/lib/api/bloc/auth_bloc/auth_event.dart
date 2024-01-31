import 'package:minichat/api/request/auth_request/auth_register_request.dart';

abstract class AuthEvent {}

class AuthEventInitialize extends AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent({required this.email, required this.password});
}

class LogoutEvent extends AuthEvent {}

class RegisterEvent extends AuthEvent{
  final String email;
  final String password;

  RegisterEvent({required this.email, required this.password});

}

class AuthEventRegister extends AuthEvent {
  final AuthRegisterRequest request;

  AuthEventRegister(this.request);
}
