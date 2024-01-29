import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:minichat/api/bloc/user_bloc/user_bloc.dart';
import 'package:minichat/api/repo/auth_repo.dart';
import 'package:minichat/api/repo/user_repo.dart';
import 'package:minichat/api/service/auth_service.dart';
import 'package:minichat/api/service/user_service.dart';
import 'package:minichat/view/pages/login/login_screen.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //flutter ve firebase aynı anda ayağa kalkar

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => UserBloc(
          UserService(
            UserRepository.instance(),
          ),
        ),
      ),
      BlocProvider(
        create: (context) => AuthBloc(
          AuthService(AuthRepository()),
          UserService(
            UserRepository.instance(),
          ),
        ),
      )
    ],
    child: MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LoginScreen(),
    ),
  ));
}
