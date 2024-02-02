import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_event.dart';
import 'package:minichat/view/pages/register/register_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late GlobalKey<FormState> _formKey;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildFormFields(),
          buildFormButton(),
        ],
      ),
    );
  }

  Widget buildFormFields() {
    return Column(
      children: <Widget>[
        RegisterFormField(
          hintText: "Username",
          icon: Icons.person_2_outlined,
          controller: usernameController,
        ),
        RegisterFormField(
          hintText: "Email",
          icon: Icons.email_outlined,
          controller: emailController,
        ),
        RegisterFormField(
          hintText: "Password",
          icon: Icons.key_outlined,
          controller: passwordController,
          isPassword: true,
        ),
      ],
    );
  }

  Widget buildFormButton() {
    return ElevatedButton(
      child: const Text("Register"),
      onPressed: () {
        final result = _formKey.currentState!.validate();
        if (result) {
          _formKey.currentState!.save();
          context.read()<AuthBloc>().add(RegisterEvent(
                email: emailController.text,
                password: passwordController.text,
                username: usernameController.text,
              ));
          ScaffoldMessenger.of(context)
              .showSnackBar(
                const SnackBar(
                  content: Text("Registering..."),
                ),
              )
              .closed
              .whenComplete(() => Navigator.of(context).pop());
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Bütün boşlukları doldurun"),
          ));
        }
      },
    );
  }
}
