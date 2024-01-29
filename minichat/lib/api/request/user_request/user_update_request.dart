class UserUpdateRequest {
  final String? fullName;
  final String? email;
  final String? password;
  final String? imageUrl;
  final String? isOnline;
  final String? biography;

  UserUpdateRequest({
    this.fullName,
    this.email,
    this.password,
    this.imageUrl,
    this.isOnline,
    this.biography,
  });
}