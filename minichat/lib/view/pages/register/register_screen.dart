import 'package:flutter/material.dart';
import 'package:minichat/view/pages/register/register_form.dart';
import 'package:minichat/view/widget/entry_container_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Chat"),
      ),
      body: const EntryContainer(
        child: RegisterForm(),
      ),
    );
  }
}
