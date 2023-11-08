import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Future loaderAnimation(context){
  return showDialog(
      barrierDismissible:false,
      barrierColor:Colors.black54.withOpacity(0.5),
      context: context,
      builder: (ctx) =>
          Dialog(
              backgroundColor:Colors.transparent,
              elevation: 0,
              child: Lottie.asset('assets/json/loader2.json')));
}

Future animation(context) {
  return showDialog(
      barrierDismissible:false,
      barrierColor: Colors.black54.withOpacity(0.5),
      context: context,
      builder: (ctx) => FutureBuilder(
          future:
          Future.delayed(const Duration(seconds: 3)).then((value) => true),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Navigator.of(context).pop();
            }
            return Dialog(
                backgroundColor: Colors.transparent,
                elevation: 0,
                child: Lottie.asset('assets/json/loader2.json'));
          }));
}