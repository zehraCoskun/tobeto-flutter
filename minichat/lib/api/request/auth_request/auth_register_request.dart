class AuthRegisterRequest {
  final String fullName;
  final String email;
  final String password;
  final String imageUrl;

  AuthRegisterRequest({
    required this.fullName,
    required this.email,
    required this.password,
    required this.imageUrl,
  });
}