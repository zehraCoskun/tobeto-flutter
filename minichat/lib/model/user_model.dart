class UserModel {
  final String id;
  final String fullname;
  final String email;
  final bool isOnline;
  final DateTime isCreated;
  final String? bio;
  final String? imageURL;

  UserModel({
    required this.id,
    required this.fullname,
    required this.email,
    required this.isOnline,
    required this.isCreated,
    this.bio,
    this.imageURL,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"] as String,
      fullname: json["fullname"] as String,
      email: json["email"] as String,
      isOnline: json["isOnline"] ?? false,
      isCreated: json["isCreated"] as DateTime,
      bio: json["bio"] as String?,
      imageURL: json["imageURL"] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "email": email,
        "isOnline": isOnline,
        "isCreated": isCreated,
        "bio": bio,
        "imageURL": imageURL,
      };
}
