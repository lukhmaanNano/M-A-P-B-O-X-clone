import 'dart:ui';
import 'package:get/get.dart';
import '../styles/common Color.dart';

class HoverController extends GetxController {
  var isHovered = false.obs;
 var primaryColor = const Color(0xFF0e1012).obs;


  void setHovered() {
    if(primaryColor == const Color(0xFF0e1012)) {
      primaryColor.value = white;
    }else{
      primaryColor.value = const Color(0xFF0e1012);
    }
  }


}