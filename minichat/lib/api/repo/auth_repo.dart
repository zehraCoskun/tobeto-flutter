import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;

  const AuthRepository._privateConstructor(this._firebaseAuth);

  static final AuthRepository _instance = AuthRepository._privateConstructor(FirebaseAuth.instance);

  factory AuthRepository.instance() {
    return _instance;
  }

  Future<UserCredential> register(String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> login(String email, String password) async {
    return await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  Future<void> deleteUser() async {
    await _firebaseAuth.currentUser!.delete();
  }

  Future<User?> getUser() async {
    return _firebaseAuth.currentUser;
  }
}
