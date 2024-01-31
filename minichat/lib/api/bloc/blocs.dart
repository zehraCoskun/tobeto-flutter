import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_event.dart';
import 'package:minichat/api/bloc/user_bloc/user_bloc.dart';
import 'package:minichat/api/service/auth_service.dart';
import 'package:minichat/api/service/user_service.dart';

final userBloc = BlocProvider(
  create: (context) => UserBloc(
    UserService.instance(),
  ),
);

final authBloc = BlocProvider(
  create: (context) => AuthBloc(
    AuthService.instance(),
    UserService.instance(),
  )..add(AuthEventInitialize()),
);
