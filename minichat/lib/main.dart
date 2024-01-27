import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:minichat/view/pages/auth_screen.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //flutter ve firebase aynı anda ayağa kalkar

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiBlocProvider(
    providers: [],
    child: MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const AuthScreen(),
    ),
  ));
}
