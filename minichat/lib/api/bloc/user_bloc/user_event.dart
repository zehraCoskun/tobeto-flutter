import 'package:minichat/api/request/user_request/user_create_request.dart';

abstract class UserEvent {}

class UserEventAdd implements UserEvent {
  final UserCreateRequest user;

  UserEventAdd({required this.user});
}

class UserEventUpdate implements UserEvent {
  final String id;
  final Map<String, dynamic> data;

  UserEventUpdate({
    required this.id,
    required this.data,
  });
}
