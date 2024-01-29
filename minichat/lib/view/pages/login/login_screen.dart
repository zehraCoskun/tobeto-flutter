import 'package:flutter/material.dart';
import 'package:minichat/view/pages/login/login_form.dart';
import 'package:minichat/view/widget/entry_container_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: EntryContainer(
          child: LoginForm(),
        ),
      ),
    );
  }
}

