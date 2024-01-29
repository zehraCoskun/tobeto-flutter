import 'package:minichat/api/request/user_request/user_create_request.dart';

abstract class UserEvent {}

class UserEventAdd implements UserEvent {
  final UserCreateRequest user;

  UserEventAdd({required this.user});
}
