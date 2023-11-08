import 'package:flutter/material.dart';
import 'common Color.dart';

class ThemeColors {
  final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: primaryColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    dialogBackgroundColor: Colors.black12,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      },
    ),
    appBarTheme: const AppBarTheme(
        // foregroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        titleTextStyle: TextStyle(fontFamily: 'Eras Demi', fontSize: 20)),
    drawerTheme:  const DrawerThemeData(
        backgroundColor: primaryColor, surfaceTintColor: primaryColor),
    dialogTheme: DialogTheme(
      surfaceTintColor: primaryColor,
      backgroundColor: primaryColor,
      elevation: 13,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    bottomSheetTheme:  const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))),
      backgroundColor: primaryColor,
      surfaceTintColor: primaryColor,
    ),
    datePickerTheme: const DatePickerThemeData(
      surfaceTintColor: Color(0xff19B0EC),
    ),
    cardTheme:  const CardTheme(
      color: primaryColor,
      surfaceTintColor: primaryColor,
    ),
    buttonTheme: const ButtonThemeData(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
    checkboxTheme: CheckboxThemeData(
      shape: const CircleBorder(),
      checkColor: MaterialStateProperty.all(Colors.white),
      fillColor: MaterialStateProperty.all(const Color(0xFF21446F)),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          backgroundColor:MaterialStateProperty.all<Color>(iconColor),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    ),
    dividerColor: buttonForeground,
    primaryColor: const Color(0xFF21446F),
    scrollbarTheme: Styles.scrollbarTheme,
  );
}
