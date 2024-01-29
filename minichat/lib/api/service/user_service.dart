import 'package:minichat/api/repo/user_repo.dart';
import 'package:minichat/api/request/user_request/user_create_request.dart';
import 'package:minichat/api/request/user_request/user_update_request.dart';

class UserService {
  final UserRepository _userRepository;

  UserService(this._userRepository);

  Future<String?> create(UserCreateRequest request) async {
    await _userRepository.create(request.toJson());
    return null;
  }

  Future<void> update(UserUpdateRequest request) async {

  }
}
