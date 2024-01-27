class Blog {
  final String id;
  final String title;
  final String content;
  final String thumbnail;
  final String author;

  Blog({
    required this.id,
    required this.title,
    required this.content,
    required this.thumbnail,
    required this.author,
  });

  Blog.fromJson(Map<String, Object?> json)
      : this(
          id: json['id']! as String,
          title: json['title']! as String,
          content: json['content']! as String,
          thumbnail: json['thumbnail']! as String,
          author: json['author']! as String,
        );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "content": content,
      "thumbnail": thumbnail,
      "author": author,
    };
  }
}