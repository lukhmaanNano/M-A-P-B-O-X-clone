import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common Color.dart';


final myHoverColor = MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return iconColor.withOpacity(0.1);
    }
    return null;
  },
);

final myBorderColor = MaterialStateProperty.resolveWith<BorderSide>(
      (Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return const BorderSide(
        color: iconColor, // Change this to your desired border color
        width: 0.6, // Adjust the border width as needed
      );
    }
    return const BorderSide(
      color: white, // Default border color
      width: 0.6, // Default border width
    );
  },
);

final myLabelColor = MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return iconColor; // Change this to your desired label color on hover
    }
    return white; // Default label color
  },
);

final myLabelColor1 = MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return brandIcon.withOpacity(0.3);
    }
    return popupBg1;
  },
);

final myHoverColor1 = MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return white;
    }
    return Colors.white70;
  },
);


ButtonStyle txtBtnStyle = ButtonStyle(
  shape:MaterialStateProperty.all<OutlinedBorder?>(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  )),
  fixedSize:MaterialStateProperty.all<Size>(const Size(105, 38)),
  textStyle: MaterialStateProperty.all<TextStyle>(
      txtBtn),
  iconColor: myHoverColor1,
  foregroundColor: myHoverColor1,
  backgroundColor:myLabelColor1,
);
// chakraPetch
 TextStyle big = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 0.3,
        wordSpacing: 0.3,
        fontSize: 70,
        fontWeight: FontWeight.w700));

TextStyle medium = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: grey100,
        letterSpacing: 0.3,
        height: 1.5,
        wordSpacing: 0.3,
        fontSize: 20,
        fontWeight: FontWeight.w400));

TextStyle medium2 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 0.3,
        fontSize: 26,
        fontWeight: FontWeight.w500));

TextStyle medium3 = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: brandGrey,
        height:1.6,
        letterSpacing: 0.2,
        fontSize: 18,
        fontWeight: FontWeight.w500));

TextStyle medium4 = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: brandGrey,
        height:2.5,
        letterSpacing: 0.2,
        fontSize: 13,
        overflow:TextOverflow.clip,
        fontWeight: FontWeight.w400));

TextStyle medium5 = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: brandGrey,
        height:2.5,
        letterSpacing: 0.2,
        fontSize: 13,
        fontWeight: FontWeight.w400));

TextStyle medium6 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: brandGrey,
        height:1.4,
        letterSpacing: 0.1,
        fontSize: 11,
        overflow:TextOverflow.clip,
        fontWeight: FontWeight.w400));

TextStyle medium66 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: iconColor,
        height:1.4,
        letterSpacing: 0.1,
        fontSize: 11,
        overflow:TextOverflow.clip,
        fontWeight: FontWeight.w400));

TextStyle header = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 0.2,
        fontSize: 44,
        fontWeight: FontWeight.w500));

TextStyle headerMini = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 0.2,
        fontSize: 14,
        fontWeight: FontWeight.w500));

TextStyle headerMini1 = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 0.2,
        fontSize: 12,
        fontWeight: FontWeight.w400));

TextStyle headerMini2 = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 0.2,
        fontSize: 13,
        fontWeight: FontWeight.w400));

TextStyle textBtn1 = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: iconColor,
        letterSpacing: 0.2,
        fontSize: 15,
        fontWeight: FontWeight.w500));

TextStyle textBtn2 = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: iconColorLight,
        letterSpacing: 0.2,
        fontSize: 16,
        fontWeight: FontWeight.w500));

TextStyle headerMini22 = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        color: iconColor,
        letterSpacing: 0.2,
        fontSize: 13,
        fontWeight: FontWeight.w500));

TextStyle textBtn = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: iconColor,
        letterSpacing: 0.3,
        fontSize: 18,
        fontWeight: FontWeight.w500));

TextStyle textBtnMini = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: iconColor,
        letterSpacing: 0.3,
        fontSize: 12,
        fontWeight: FontWeight.w500));

TextStyle badgeStyle = GoogleFonts.quicksand(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 1.3,
        fontSize: 10,
        fontWeight: FontWeight.w600));

TextStyle leanText = GoogleFonts.quicksand(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 1.3,
        fontSize: 12,
        fontWeight: FontWeight.w600));

TextStyle logoStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: white,
        letterSpacing: 0.3,
        fontSize: 22,
        fontWeight: FontWeight.w500));

TextStyle primaryStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: white,
        fontSize: 15,
        fontWeight: FontWeight.w500));

 TextStyle btnStyle =
GoogleFonts.nunito(
    textStyle: const TextStyle(
        color: white,
        fontSize: 13,
        fontWeight: FontWeight.w500));

TextStyle bigBtnStyle =
GoogleFonts.nunito(
    textStyle: const TextStyle(
        color: white,
        fontSize: 18,
        fontWeight: FontWeight.w500));

TextStyle bigBtnStyle1 =
GoogleFonts.nunito(
    textStyle: const TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w500));

TextStyle txtBtn =
GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: brandGrey,
        height:1.4,
        letterSpacing: 0.1,
        fontSize: 11,
        overflow:TextOverflow.clip,
        fontWeight: FontWeight.w400));

TextStyle bottomFixedBtn = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white));


const TextStyle inputHeader =
    TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400);

const TextStyle inputHeaderLogin =
TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400);

TextStyle inputHeader1 = TextStyle(
    fontSize: 14, color: Colors.grey.shade600, fontWeight: FontWeight.w400);

TextStyle mapBtn = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: secondaryColor,
        letterSpacing: 0.3,
        fontSize: 15,
        fontWeight: FontWeight.w400));


 TextStyle secondaryHeader = TextStyle(
    color: primaryColor,
    overflow: TextOverflow.clip,
    fontSize: 18,
    fontWeight: FontWeight.w300);

const TextStyle menuStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4);

const TextStyle sideMenuStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.3,
);

const TextStyle versionStyle = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w200,
    wordSpacing: 0.4,
    fontSize: 12,
    letterSpacing: 0.6);

/// Card View ///

TextStyle alertContent = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.black54));


TextStyle alertButton2 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        overflow: TextOverflow.clip,
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w400));

TextStyle statusCard = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white));

TextStyle cardTitle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black));

TextStyle cardHeader = GoogleFonts.poppins(
    textStyle: const TextStyle(
      overflow: TextOverflow.clip,
        fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black));

TextStyle tableHeader = GoogleFonts.poppins(
    textStyle: const TextStyle(
        overflow: TextOverflow.clip,
        fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black));

TextStyle cardHeader1 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        overflow: TextOverflow.clip,
        fontSize: 10, fontWeight: FontWeight.w300, color: Colors.black));

// Montserrat,Inclusive Sans,Nunito,  inconsolata ,josefinSans
