import 'package:flutter/material.dart';

//ilk önce bu şekilde renk asseti oluşturmuştum,  daha sonraa color scheme kullanmak istedim. ancak color scheme içinde bu renkleri düzgün eşleştiremedim sanırım ki renkler çoğu durumda yazıların okunaklı olmayacağı pozisyonda kaldı. myColors'daki renk atamalarını tekrar yapabilir misin
class MyColors {
  static Color mainColor = const Color.fromARGB(255, 39, 86, 115);
  static Color secondaryColor = const Color.fromARGB(255, 81, 118, 140);
  static Color mainTextColor = const Color.fromARGB(255, 21, 3, 67);
  static Color secondaryTextColor = const Color.fromARGB(255, 230, 230, 230);
  static Color otherColor = const Color.fromARGB(255, 46, 223, 242);
}

ColorScheme myColors = ColorScheme(
  brightness: Brightness.light,
  primary: MyColors.mainColor,
  error: MyColors.otherColor,
  onError: MyColors.otherColor,
  onBackground: MyColors.secondaryColor,
  secondary: MyColors.otherColor,
  surface: MyColors.secondaryTextColor,
  background: MyColors.secondaryTextColor,
  onPrimary: MyColors.secondaryTextColor,
  onSecondary: MyColors.mainTextColor,
  onSurface: MyColors.mainColor,
);
