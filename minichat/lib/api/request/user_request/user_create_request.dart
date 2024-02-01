class UserCreateRequest {
  final String id;
  final String fullName;
  final String email;

  UserCreateRequest({
    required this.id,
    required this.fullName,
    required this.email,

  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'email': email,
      };
}