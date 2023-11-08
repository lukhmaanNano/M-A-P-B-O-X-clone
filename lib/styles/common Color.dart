import 'package:flutter/material.dart';
const primaryColor = Color(0xFF0e1012);
const secondaryColor = Color.fromRGBO(0, 95, 255, 0.88);
const white = Colors.white;
const iconColor = Color(0xFF007afc);
const iconColorLight = Color(0xff218fff);
const brandIcon = Color(0xFF8b96aa);
const brandGrey = Color(0xFFa0aaba);
const popupBg = Color(0xFF161a1d);
const popupBg1 = Color(0xFF23262D);
const lightBlue = Color(0xFF64b5f6);
const buttonForeground = Color(0xff19B0EC);
const red = Color(0xFFa4161a);
const grey50 = Color(0xefefefef);
const grey100 = Color(0xFFa5a5a5);
const orange = Color(0xFFe36414);
const green = Color(0xff38b000);
const badgeGreen = Color(0xff2fc078);
const cardStatus = Color(0xFFf27059);
const denyBtn = Color(0xFFFCE6E6);
const denyTxt = Color(0xFFDA0000);


class Styles {
  static Color scaffoldBackgroundColor = const Color(0xFFF8F8F8);

  static ScrollbarThemeData scrollbarTheme =
      const ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(scaffoldBackgroundColor),
    interactive: true,
  );
}
