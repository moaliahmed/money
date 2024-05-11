import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money/core/style_manager.dart';

import 'color_manger.dart';
import 'fonts_manger.dart';
import 'value_manager.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    primaryColorLight: ColorManager.primary,

    colorScheme: ColorScheme(
      background: ColorManager.background,
      brightness: Brightness.light,
      primary: ColorManager.primary,
      onPrimary: Colors.white,
      // open screen
      secondary: ColorManager.grey,
      onSecondary: Colors.white,
      primaryContainer: Colors.orange,
      error: Colors.black,
      onError: Colors.white,
      onBackground: ColorManager.background1,
      //open screen
      surface: ColorManager.primary,
      onSurface: Colors.white,
    ),
    //main color
    // card theme
    cardTheme: CardTheme(
      color: ColorManager.surface,
      shadowColor: ColorManager.secondary,
      elevation: AppSize.s4,
    ),

    // app Bar theme
    appBarTheme: AppBarTheme(

      elevation: AppSize.s2,
      color: ColorManager.primary,
      shadowColor: ColorManager.otline,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.primary,
          statusBarIconBrightness: Brightness.light),
      centerTitle: true,
      titleTextStyle:
          getRegularStyle(fontSize: AppSize.s16, color: ColorManager.primary),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.otline,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primary,
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
            color: ColorManager.surface, fontSize: FontSize.s17),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    // text theme
    textTheme: TextTheme(
      displayLarge:
          getBoldStyle(color: ColorManager.text, fontSize: FontSize.s16),
      // head line 1
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.secondary, fontSize: FontSize.s16),
      headlineMedium:
          getRegularStyle(color: ColorManager.text, fontSize: FontSize.s14),
      // sub title 1
      titleMedium:
          getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16),
      // caption
      bodyLarge: getBoldItalicAmiriStyle(
          color: ColorManager.text, fontSize: FontSize.s16),
      //body text 1
      bodySmall:
          getItalicAmiriStyle(color: ColorManager.text, fontSize: FontSize.s18),
    ),
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: ColorManager.primary,
      suffixIconColor: ColorManager.primary,
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      labelStyle:
          getMediumStyle(color: ColorManager.text, fontSize: FontSize.s16),
      hintStyle:
          getRegularStyle(color: ColorManager.text, fontSize: FontSize.s16),
      errorStyle: getRegularStyle(
        color: ColorManager.red,
      ),
      // enabled Border
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
      ),

      //////////////////////////////////////////////// focused Border
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
      ),

      ////////////////////////////////////////focused Error Border
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
      ),

      //////////////////////////////////// error Border
      errorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.red,
          width: AppSize.s1_5,
        ),
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.darkPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    colorScheme: ColorScheme(
      background: ColorManager.darkBackground,
      brightness: Brightness.dark,
      primary: ColorManager.darkPrimary,
      onPrimary: ColorManager.darkPrimary,
      secondary: ColorManager.grey,
      onSecondary: Colors.black,
      primaryContainer: Colors.orange,
      error: Colors.black,
      onError: Colors.white,
      onBackground: ColorManager.darkBackground,
      surface: ColorManager.primary,
      onSurface: Colors.white,
    ),
    // card theme
    cardTheme: CardTheme(
      color: ColorManager.surface,
      shadowColor: ColorManager.secondary,
      elevation: AppSize.s4,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.darkBackground,
        selectedIconTheme: IconThemeData(color: ColorManager.darkPrimary),
        selectedItemColor: ColorManager.darkPrimary,
        unselectedIconTheme: IconThemeData(color: ColorManager.secondary)),
    // app Bar theme
    appBarTheme: AppBarTheme(

      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.darkPrimary,
          statusBarIconBrightness: Brightness.dark),
      elevation: AppSize.s2,
      color: ColorManager.darkPrimary,
      shadowColor: ColorManager.otline,
      centerTitle: true,
      titleTextStyle:
          getRegularStyle(fontSize: AppSize.s16, color: ColorManager.primary),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.otline,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primary,
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
            color: ColorManager.surface, fontSize: FontSize.s17),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    // text theme
    textTheme: TextTheme(
      displayLarge:
          getBoldStyle(color: ColorManager.darkText, fontSize: FontSize.s16),
      // head line 1
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkSecondary, fontSize: FontSize.s16),
      headlineMedium:
          getRegularStyle(color: ColorManager.darkText, fontSize: FontSize.s14),
      // sub title 1
      titleMedium:
          getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16),
      // caption
      bodyLarge: getBoldItalicAmiriStyle(
          color: ColorManager.darkText, fontSize: FontSize.s16),
      //body text 1
      bodySmall: getRegularStyle(color: ColorManager.text),
    ),
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: ColorManager.darkPrimary,
      prefixIconColor: ColorManager.darkPrimary,
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      labelStyle:
          getMediumStyle(color: ColorManager.darkText, fontSize: FontSize.s20),
      hintStyle:
          getRegularStyle(color: ColorManager.darkText, fontSize: FontSize.s20),
      errorStyle: getRegularStyle(
        color: ColorManager.red,
      ),
      // enabled Border
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.darkPrimary,
          width: AppSize.s1_5,
        ),
      ),

      //////////////////////////////////////////////// focused Border
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.darkPrimary,
          width: AppSize.s1_5,
        ),
      ),

      ////////////////////////////////////////focused Error Border
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.darkPrimary,
          width: AppSize.s1_5,
        ),
      ),

      //////////////////////////////////// error Border
      errorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.red,
          width: AppSize.s1_5,
        ),
      ),
    ),
  );
}
