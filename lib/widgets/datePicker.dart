import 'package:flutter/material.dart';
import '../styles/common Color.dart';

Future<DateTime?> m3datePicker(BuildContext context,initial,first,help){
  return  showDatePicker(
    context: context,
    initialDate: initial,
    firstDate: first,
    lastDate: DateTime(2030),
    helpText:help,
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme:  const ColorScheme.light(
            primary: iconColor,
            surfaceTint: Color(0xff19B0EC),
            onPrimary: Colors.white,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: iconColor,
            ),
          ),
        ),
        child: child!,
      );
    },
  );
}