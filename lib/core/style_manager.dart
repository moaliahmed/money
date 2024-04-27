import 'package:flutter/material.dart';
import 'package:money/core/fonts_manger.dart';

dynamic _getTextStyle(
    double fontSize, String fontsManager, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontsManager,
    color: color,
    fontWeight: fontWeight,
  );
}

// bold
dynamic getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontMontserratFamily,
      FontsWeightManager.bold, color);
}



//semi bold
dynamic getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontMontserratFamily,
      FontsWeightManager.semiBold, color);
}

//medium
dynamic getMediumStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontMontserratFamily,
      FontsWeightManager.medium, color);
}

//regular
dynamic getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontMontserratFamily,
      FontsWeightManager.regular, color);
}

//light
dynamic getLightStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontMontserratFamily,
      FontsWeightManager.light, color);
}
//amire
dynamic getBoldAmiriStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontArefRuqaaFamily,
      FontsWeightManager.bold, color);
}
dynamic getRegularAmiriStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontArefRuqaaFamily,
      FontsWeightManager.medium, color);
}
dynamic getBoldItalicAmiriStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontArefRuqaaFamily,
      FontsWeightManager.semiBold, color);
}dynamic getItalicAmiriStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsManager.fontArefRuqaaFamily,
      FontsWeightManager.medium, color);
}