import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniblog/blocs/article_bloc/article_event.dart';
import 'package:miniblog/blocs/article_bloc/article_state.dart';
import 'package:miniblog/repositories/article_repository.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleRepository articleRepository;

  ArticleBloc(this.articleRepository) : super(ArticlesInitial()) {
    on<FetchArticles>(_onFetchAll);
    on<FetchArticle>(_onFetchOnly);
    on<AddArticle>(_onAdd);
  }

  void _onFetchAll(FetchArticles event, Emitter<ArticleState> emit) async {
    emit(ArticlesLoading()); //emit state'i değiştirebilmeyi sağlar
    final blogList = await articleRepository.fetchBlogs();
    emit(ArticlesLoaded(blogs: blogList));
  }

  void _onFetchOnly(FetchArticle event, Emitter<ArticleState> emit) async {
    emit(ArticlesLoading());
    final blog = await articleRepository.fetchBlog(event.id);
    emit(ArticleLoaded(blog: blog));
  }

  void _onAdd(AddArticle event, Emitter<ArticleState> emit) async {
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
  }
}
