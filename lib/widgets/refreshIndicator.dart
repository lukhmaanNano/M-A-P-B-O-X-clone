import 'package:flutter/material.dart';
import '../styles/common Color.dart';

Widget refresh(Future<void> Function() onRefresh,Widget child){
  return RefreshIndicator(
    displacement: 150,
    backgroundColor: primaryColor,
    color: iconColor,
    strokeWidth: 3,
    triggerMode: RefreshIndicatorTriggerMode.anywhere,
    onRefresh: onRefresh, child: child,
  );
}