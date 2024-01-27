import 'package:image_picker/image_picker.dart';

abstract class ArticleEvent {}

class FetchArticles extends ArticleEvent {}

class FetchArticle extends ArticleEvent {
  final String id;

  FetchArticle({required this.id});
}

class AddArticle extends ArticleEvent {
  final String title;
  final String content;
  final String author;
  final XFile file;

  AddArticle({
    required this.title,
    required this.content,
    required this.author,
    required this.file,
  });
}
