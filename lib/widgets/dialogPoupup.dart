import 'package:flutter/material.dart';


Future appBarDialog(BuildContext context,Widget child,Color clr){
  return showDialog(
      context: context,
      // barrierDismissible:false
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) => Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 24,
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  surfaceTintColor:clr,
                  backgroundColor: clr,
                  actionsAlignment: MainAxisAlignment.start,
                  alignment: Alignment.topCenter,
                  content: child,
                ),
              ),
            ],
          ),
        );
      }
  );
}