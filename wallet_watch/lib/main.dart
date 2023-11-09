// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';
import 'package:wallet_watch/views/home_view.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: HomeView(),
      appBar: AppBar(
          backgroundColor: MyColors.secodaryColor,
          title: const appbarTitle(),
          leading: const profilButton(),
          actions: const [
            addButton(),
          ]),
    ),
    routes: {'/toHome': (context) =>  HomeView()},
  ));
}

class addButton extends StatelessWidget {
  const addButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.add_circle,
        color: MyColors.secondaryTextColor,
      ), // + butonu
      onPressed: () {},
    );
  }
}

class profilButton extends StatelessWidget {
  const profilButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.person_2, color: MyColors.secondaryTextColor),
      onPressed: () {},
    );
  }
}

class appbarTitle extends StatelessWidget {
  const appbarTitle({
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
