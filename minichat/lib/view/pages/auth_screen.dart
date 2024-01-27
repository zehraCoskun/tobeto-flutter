import 'package:flutter/material.dart';
import 'package:minichat/view/widget/entry_container_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _isLogin = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: EntryContainer(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: "E-posta"),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) {},
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Şifre"),
                  autocorrect: false,
                  obscureText: true,
                  onSaved: (newValue) {},
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(onPressed: () {}, child: Text(_isLogin ? "Giriş Yap" : "Kayıt Ol")),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _isLogin = !_isLogin;
                      });
                    },
                    child: Text(_isLogin ? "Kayıt Sayfasına Git" : "Giriş Sayfasına Git"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
