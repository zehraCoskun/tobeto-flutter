import 'package:miniblog/models/blog.dart';

abstract class ArticleState {}

class ArticlesInitial extends ArticleState {}

class ArticlesLoaded extends ArticleState {
  final List<Blog> blogs;

  ArticlesLoaded({required this.blogs});
}

class ArticlesSuccess extends ArticleState {}

class ArticlesLoading extends ArticleState {}

class ArticleLoaded extends ArticleState {
  final Blog blog;

  ArticleLoaded({required this.blog});
}



class ArticlesError extends ArticleState {}
