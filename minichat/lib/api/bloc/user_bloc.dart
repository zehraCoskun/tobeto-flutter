import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minichat/api/bloc/user_event.dart';
import 'package:minichat/api/bloc/user_state.dart';
import 'package:minichat/api/service/user_service.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService _userService;

  UserBloc(this._userService) : super(UserStateInit()) {
    on<UserEventAdd>((event, emit) => _onAdd(event, emit));
    //UserEventAdd olayı tetiklendiğinde _onAdd metodu çalıştırılır
  }

  void _onAdd(UserEventAdd event, Emitter<UserState> state) async {
    final id = await _userService.create(event.data);
  }
}
/*
_onAdd metodu, UserEventAdd olayını alır ve Emitter<UserState> nesnesi üzerinden bir UserState durumu yayınlar.(emitter kelime anlamı olarak yayıcı demek). Bu metot, _userService üzerinden yeni bir kullanıcı oluşturur ve oluşturulan kullanıcının id'sini alır. _userService.create(event.data) ifadesi ile kullanıcı oluşturulur.
 */