import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:minichat/api/bloc/blocs.dart';
import 'package:minichat/view/pages/login/login_screen.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //flutter ve firebase aynı anda ayağa kalkar

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiBlocProvider(
    providers: [userBloc, authBloc],
    child: MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LoginScreen(),
    ),
  ));
}
