import 'package:firebase_auth/firebase_auth.dart';
import 'package:minichat/api/repo/auth_repo.dart';

class AuthService {
  final AuthRepository _authRepository;

  const AuthService._privateConstructor(
    this._authRepository,
  );

  static final AuthService _instance = AuthService._privateConstructor(
    AuthRepository.instance(),
  );

  factory AuthService.instance() {
    return _instance;
  }

  Future<String?> register(String email, String password) async {
    final result = await _authRepository.register(email, password);
    if (result.user == null) {
      print("AuthService'te hata var");
    }
    return result.user!.uid;
  }

  Future<String?> login(String email, String password) async {
    final uid = await _authRepository.login(email, password).then((value) {
      return value.user?.uid;
    });

    // if (uid != null) {
    //   await _userService.update(uid, {
    //     "isOnline": true,
    //     "lastActive": DateTime.now(),
    //   });
    // }

    return uid;
  }

  Future<void> logout() async {
    final user = await _authRepository.getUser();

    if (user != null) {
      // await _userService.update(user.uid, {
      //   "isOnline": false,
      //   "lastActive": DateTime.now(),
      // });
      await _authRepository.logout();
    }
  }

  Future<User?> getUser() async {
    return _authRepository.getUser();
  }

  void delete() {
    _authRepository.deleteUser();
  }
}
