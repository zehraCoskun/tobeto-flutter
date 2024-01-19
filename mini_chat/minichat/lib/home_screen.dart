import 'package:flutter/material.dart';
import 'package:minichat/signup_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Chat'e Hoşgeldin"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            firebaseAuthInstance.signOut();
          },
          child: const Text("Çıkış Yap"),
        ),
      ),
    );
  }
}
