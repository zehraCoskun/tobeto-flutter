import 'package:flutter/material.dart';

class RegisterFormField extends StatelessWidget {
  const RegisterFormField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
    this.controller,
  }) : super(key: key);

  final String hintText;
  final bool isPassword;
  final IconData icon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.height * 0.4,
      margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Cannot be empty";
          }
          if (isPassword && value.length < 8) {
            return "Password Must Be More Than 8 Characters Long";
          }
          return null;
        },
        keyboardType: !isPassword ? TextInputType.emailAddress : TextInputType.visiblePassword,
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
        ),
      ),
    );
  }
}
