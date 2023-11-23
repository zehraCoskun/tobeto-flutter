// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';
import 'package:wallet_watch/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: myColors,
        appBarTheme: AppBarTheme(
            centerTitle: false,
            backgroundColor: MyColors.mainColor,
            foregroundColor: MyColors.secondaryTextColor,
            titleTextStyle: GoogleFonts.nunito(
              fontSize: 36,
              fontWeight: FontWeight.w400,
            ),
            iconTheme: IconThemeData(size: 36, color: MyColors.otherColor)),
        cardTheme: CardTheme(
            color: MyColors.secondaryTextColor,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8))),
    home: const HomeView(),
  ));
}
