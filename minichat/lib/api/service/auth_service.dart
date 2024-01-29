import 'package:minichat/api/repo/auth_repo.dart';

class AuthService {
  final AuthRepository _authRepository;

  AuthService(this._authRepository);

  Future<String?> register(String email, String password) async {
    final result = await _authRepository.register(email, password);
    if (result.user == null) {
      print("AuthService'te hata var");
    }
    return result.user!.uid;
  }
}
