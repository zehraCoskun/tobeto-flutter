import 'package:minichat/api/request/auth_request/auth_register_request.dart';

abstract class AuthEvent {}

class AuthEventRegister extends AuthEvent {
  final AuthRegisterRequest request;

  AuthEventRegister(this.request);
}
