import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniblog/blocs/article_bloc/article_bloc.dart';
import 'package:miniblog/repositories/article_repository.dart';
import 'package:miniblog/screens/home_page.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ArticleBloc>(
      create: (context) => ArticleBloc(
        ArticleRepository(),
      ),
    ),
  ], child: const MaterialApp(home: Homepage())));
}
