class UserCreateRequest {
  final String id;
  final String fullName;
  final String email;
  final String imageUrl;

  UserCreateRequest({
    required this.id,
    required this.fullName,
    required this.email,
    required this.imageUrl,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'email': email,
        'imageUrl': imageUrl,
      };
}