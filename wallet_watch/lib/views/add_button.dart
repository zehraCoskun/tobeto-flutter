import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context);
        },
        backgroundColor: MyColors.otherColor,
        child: const Icon(
          Icons.add_circle,
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Yeni bir gider ekle",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: MyColors.mainTextColor,
                  ),
                ),
              ),
              LoginForm(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Ekle"))
            ],
          ),
        );
      },
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final String spendLabel = "Gider kaleminizi giriniz";
  final String spendHintText = "Gider";
  final String priceLabel = "Harcadığınız tutarı giriniz";
  final String priceHintText = "Harcama tutarı";
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginTextfield(
          controller: _usernameController,
          labelText: spendLabel,
          hintText: spendHintText,
        ),
        LoginTextfield(
          controller: _passwordController,
          labelText: priceLabel,
          hintText: priceHintText,
          keyboardType: TextInputType.number,
        )
      ],
    );
  }
}

class LoginTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;

  const LoginTextfield(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hintText,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labelText,
            hintText: hintText,
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
