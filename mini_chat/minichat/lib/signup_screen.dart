import 'package:flutter/material.dart';
import 'package:minichat/entry_container_widget.dart';
import 'package:minichat/home_screen.dart';
import 'package:minichat/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firebaseAuthInstance = FirebaseAuth.instance;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Future<void> _submit() async {
    _formKey.currentState!.save(); //text field'daki son verileri kaydediyor
    try {
      //kayıt olma başarılı
      final userCredentials = await firebaseAuthInstance.createUserWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      firebaseFirestore.collection("users").doc(userCredentials.user!.uid).set({"email": _email});
    } on FirebaseAuthException catch (error) {
      //fırlatılan hatayı yakala
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message ?? "Kayıt sırasında bilnmeyen hata"),
        ),
      );
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
      body: Column(
        children: [
          EntryContainer(
            child: Form(
              key: _formKey, //bu olmadan text form'dan veri alamayız
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: "e-posta"),
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (newValue) {
                      _email = newValue!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "parola"),
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onSaved: (newValue) {
                      _password = newValue!;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: ElevatedButton(onPressed: () => _submit(), child: const Text("Kayıt Ol")),
                  )
                ],
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
              child: Text("Giriş Yap"))
        ],
      ),
    );
  }
}
