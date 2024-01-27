abstract class UserEvent {}

class UserEventAdd implements UserEvent {
  final Map<String, dynamic> data;

  UserEventAdd({required this.data});
}
