import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_event.dart';
import 'package:minichat/api/bloc/auth_bloc/auth_state.dart';
import 'package:minichat/view/pages/login/login_form_field.dart';
import 'package:minichat/view/pages/register/register_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormState> _formKey;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
        LoginFormField(
          controller: emailController,
          hintText: "Email",
        ),
        LoginFormField(
          controller: passwordController,
          hintText: "Password",
          isPassword: true,
        ),
      ],
    );
  }

  Widget buildFormButton() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              );
            },
            child: const Text(
              "Register?",
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            final result = _formKey.currentState!.validate();
            if (result) {
              _formKey.currentState!.save();
              context.read<AuthBloc>().add(LoginEvent(email: emailController.text, password: passwordController.text));
            }
          },
          child: const Text("Login"),
        ),
      ],
    );
  }
}
