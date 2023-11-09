// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:wallet_watch/views/home_view.dart';
import 'package:wallet_watch/views/login_appbar.dart';
import 'package:wallet_watch/views/login_view.dart';

void main() {
  runApp(MaterialApp(
    home: const Scaffold(
      body: LoginView(),
      appBar: LoginAppBar(),
    ),
    routes: {
      '/toHome': (context) => HomeView(),
    },
  ));
}
