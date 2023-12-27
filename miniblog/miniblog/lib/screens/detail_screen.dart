import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniblog/blocs/article_bloc/article_bloc.dart';
import 'package:miniblog/blocs/article_bloc/article_event.dart';
import 'package:miniblog/blocs/article_bloc/article_state.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mini Blog"),
        ),
        body: BlocBuilder<ArticleBloc, ArticleState>(
          builder: (context, state) {
            if (state is ArticlesInitial || state is ArticlesLoaded || state is ArticlesSuccess || state is ArticlesLoading) {
              context.read<ArticleBloc>().add(FetchArticle(id: id));
            }
            // if (state is ArticlesLoading) {
            //   return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
            if (state is ArticlesError) {
              return const Center(
                child: Text("Hata"),
              );
            }
            if (state is ArticleLoaded) {
              final blog = state.blog;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Image.network(blog.thumbnail),
                        Text(blog.content),
                        Text(blog.author),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return const Center(
                  child:
                      // CircularProgressIndicator(),
                      Text("aa"));
            }
          },
        ));
  }
}
