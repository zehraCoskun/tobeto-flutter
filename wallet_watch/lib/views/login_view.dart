// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  final String loginButtonText = "Giriş Yap";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(), //!buna bakıcaz
          Center(child: loginButton(loginButtonText: loginButtonText)),
        ],
      ),
    );
  }
}

class loginButton extends StatelessWidget {
  const loginButton({
    super.key,
    required this.loginButtonText,
  });

  final String loginButtonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/toHome');
          print(
              "basıldı"); //? burası yazdırılmıyor, bu butondan sayfa geçişi de yapılmıyor. neden olabilir
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.secondaryTextColor),
        child: Text(
          loginButtonText,
          style: TextStyle(color: MyColors.secodaryColor),
        ));
  }
}
