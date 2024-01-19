import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:minichat/entry_container_widget.dart';
import 'package:minichat/signup_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<void> _submit() async {
    _formKey.currentState!.save();

    try {
      final UserCredentials = await firebaseAuthInstance.signInWithEmailAndPassword(email: _email, password: _password);
    } on FirebaseAuthException catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? "Giriş sırasında bilinmeyen hata")));
    }
  }

  final _formKey = GlobalKey<FormState>();
  var _email = "";

  var _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Chat"),
      ),
      body: EntryContainer(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: "e-posta"),
                onSaved: (newValue) {
                  _email = newValue!;
                },
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(labelText: "parola"),
                onSaved: (newValue) {
                  _password = newValue!;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(onPressed: () => _submit(), child: const Text("Giriş Yap")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
