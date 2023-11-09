import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.secodaryColor,
      title: const AppbarTitle(),
    );
  }
}

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
  });
  final String title = "Wallet Watch";
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: MyColors.secondaryTextColor,
          fontWeight: FontWeight.w400,
          fontSize: 24),
    );
  }
}
