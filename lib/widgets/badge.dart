import 'package:flutter/cupertino.dart';
import '../styles/common Color.dart';
import '../styles/CommonTextStyle.dart';

Widget badge(String label){
 return Container(
      decoration: BoxDecoration(
        color:badgeGreen,
        borderRadius: BorderRadius.circular(4),
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 6.0),
        child: Text(label,style:badgeStyle),
      )
  );
}

Widget badgeMini(String label){
  return Container(
      decoration: BoxDecoration(
        color:iconColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
        child: Text(label,style:badgeStyle),
      )
  );
}