import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniblog/blocs/article_bloc/article_event.dart';
import 'package:miniblog/blocs/article_bloc/article_state.dart';
import 'package:miniblog/repositories/article_repository.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleRepository articleRepository;

  ArticleBloc(this.articleRepository) : super(ArticlesInitial()) {
    on<FetchArticles>(_onFetchAll);
    on<AddArticle>(_onAdd);
  }
  void _onFetchAll(FetchArticles event, Emitter<ArticleState> emit) async {
    try {
      emit(ArticlesLoading());
      final blogList = await articleRepository.fetchBlogs();
      emit(ArticlesLoaded(blogs: blogList));
    } catch (e) {
      emit(ArticlesError());
    }
  }

  void _onAdd(AddArticle event, Emitter<ArticleState> emit) async {
    try {
      final response = await articleRepository.addToBlogs(
        event.title,
        event.content,
        event.author,
        event.file,
      );

      if (response) {
        emit(ArticlesSuccess());
      } else {
        emit(ArticlesError());
      }
    } catch (e) {
      emit(ArticlesError());
    }
  }
}
