import 'package:flutter/material.dart';
import 'package:minichat/signup_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Chat'e Hoşgeldin"),
        actions: [
          ElevatedButton(
            onPressed: () {
              firebaseAuthInstance.signOut();
            },
            child: const Text("X"),
          )
        ],
      ),
      body: Column(children: [
        const CircleAvatar(
          radius: 40,
        ),
        TextButton(onPressed: () {}, child: const Text("Resim Seç")),
        TextButton(onPressed: () {}, child: const Text("Yükle")),
      ]),
    );
  }
}
