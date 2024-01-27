import 'package:minichat/api/repo/user_repo.dart';

class UserService {
  final UserRepository _userRepository;

  UserService(this._userRepository);

  Future<String?> create(Map<String, dynamic> data) async {
    final user = await _userRepository.create(data);
    return user.id;
  }
}
