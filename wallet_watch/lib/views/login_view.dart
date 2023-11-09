// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  final String loginButtonText = "Giriş Yap";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          //TODO: Boş bir alana dokunulduğunda klavyeyi kapatması lazım ama kapatamadım
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              LoginForm(),
              Center(child: LoginButton(loginButtonText: loginButtonText)),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final String nameLabel = "Kullanıcı adınızı giriniz";
  final String nameHintText = "Kullanıcı adı";
  final String passwordLabel = "Parolanızı giriniz";
  final String passwordHintText = "Parola";
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginTextfield(
            controller: _usernameController,
            labelText: nameLabel,
            hintText: nameHintText,
            icon: Icons.person_3),
        LoginTextfield(
          controller: _passwordController,
          labelText: passwordLabel,
          hintText: passwordHintText,
          icon: Icons.key,
          keyboardType: TextInputType.number,
          password: true,
        )
      ],
    );
  }
}

class LoginTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool password;

  const LoginTextfield(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hintText,
      required this.icon,
      this.keyboardType = TextInputType.text,
      this.password = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: password,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
              hintText: hintText,
              icon: Icon(icon)),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.loginButtonText,
  });

  final String loginButtonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/toHome');
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.secondaryTextColor),
        child: Text(
          loginButtonText,
          style: TextStyle(color: MyColors.secodaryColor),
        ));
  }
}
