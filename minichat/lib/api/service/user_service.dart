import 'package:minichat/api/repo/user_repo.dart';
import 'package:minichat/api/request/user_request/user_create_request.dart';
import 'package:minichat/api/request/user_request/user_update_request.dart';

class UserService {
  final UserRepository _userRepository;

  const UserService._privateConstructor(this._userRepository);
  static final UserService _instance = UserService._privateConstructor(UserRepository.instance());

  factory UserService.instance() {
    return _instance;
  }

  Future<String?> create(UserCreateRequest request) async {
    await _userRepository.create(request.toJson());
    return null;
  }

  Future<void> update(UserUpdateRequest request) async {
    
  }
}
