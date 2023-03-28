import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


Color backGroundColor = Color(0xFF191C2D);
Color textColor = const Color(0xFFFFFFFF);

Widget height(double height) {
  return SizedBox(
    height: height,
  );
}

Widget width(double width) {
  return SizedBox(
    width: width,
  );
}

confirmButton(
    void Function() onTap,
    double pDblBtmPadding,
    String pStrText, {
      double? pDblWidth,
      double? pDblFSize,
      Color? pClrTextColor,
    }) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 20, bottom: pDblBtmPadding),
    child: InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: onTap,
      child: Container(
        height: 7.3.h,
        width: pDblWidth ?? double.infinity,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: const Color(0xFF2D305A),
          borderRadius: BorderRadius.circular(35),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF2D305A),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: text(pStrText, pDblFSize ?? 23.sp,
              pClrColor: Colors.white, pFontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}

text(String pStrText, double pDblFontSize,
    {Color? pClrColor, FontWeight? pFontWeight}) {
  return Text(
    pStrText,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: pClrColor ?? Colors.white,
      fontSize: pDblFontSize,
      fontWeight: pFontWeight ?? FontWeight.w500,
      fontFamily: "poppins",
      letterSpacing: 2,
    ),
  );
}