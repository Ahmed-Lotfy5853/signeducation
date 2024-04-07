import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightTheme() => ThemeData(
    scaffoldBackgroundColor: ColorManager.backgroundColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black),
      titleLarge: TextStyle(color: Colors.black),
      labelLarge: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),
      headlineLarge: TextStyle(color: Colors.black),
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      textStyle: MaterialStateTextStyle.resolveWith(
          (states) => const TextStyle(decoration: TextDecoration.none)),
      foregroundColor:
          MaterialStateColor.resolveWith((states) => ColorManager.textColor),
    )),
    iconTheme: const IconThemeData(color: Colors.black),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.grey.shade700),
      border: const OutlineInputBorder(),
      errorBorder: const OutlineInputBorder(),
      enabledBorder: const OutlineInputBorder(),
      disabledBorder: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(),
      focusedErrorBorder: const OutlineInputBorder(),
    ),
    listTileTheme:const ListTileThemeData(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        selectedIconTheme: IconThemeData(color: ColorManager.primaryColor)),
    expansionTileTheme: ExpansionTileThemeData(
        collapsedBackgroundColor: Colors.grey.shade200,
        backgroundColor: Colors.grey.shade200,
        iconColor: Colors.black,
        collapsedIconColor: Colors.black),
    radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.black)),
    dialogBackgroundColor: ColorManager.backgroundColor,
    dialogTheme: const DialogTheme(
        backgroundColor: ColorManager.backgroundColor,
        surfaceTintColor: ColorManager.backgroundColor),
    popupMenuTheme: PopupMenuThemeData(
        color: MaterialStateColor.resolveWith(
            (states) => ColorManager.backgroundColor),
        surfaceTintColor: MaterialStateColor.resolveWith(
            (states) => ColorManager.backgroundColor)),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: ColorManager.backgroundColor,

/*      backgroundColor: ColorManager.primaryColor,
      surfaceTintColor: ColorManager.primaryColor,
      shadowColor: ColorManager.primaryColor,
      headerBackgroundColor: ColorManager.primaryColor,
      headerForegroundColor: ColorManager.primaryColor,*/
      // todayBackgroundColor:
      //     MaterialStateColor.resolveWith((states) => Colors.white),
      yearForegroundColor:
          MaterialStateColor.resolveWith((states) => Colors.black),
      /* todayBackgroundColor:
          MaterialStateColor.resolveWith((states) => ColorManager.primaryColor),*/
      /*todayForegroundColor:
          MaterialStateColor.resolveWith((states) => Colors.white),*/
      // yearStyle: TextStyle(color: Colors.white),
    ),
    floatingActionButtonTheme:const  FloatingActionButtonThemeData(
      backgroundColor: ColorManager.primaryColor,
      foregroundColor: Colors.white,
    ),
    checkboxTheme:const  CheckboxThemeData());
ThemeData darkTheme() => ThemeData(
    scaffoldBackgroundColor: ColorManager.darkBackgroundColor,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateTextStyle.resolveWith(
            (states) => const TextStyle(decoration: TextDecoration.underline)),
        foregroundColor: MaterialStateColor.resolveWith(
            (states) => ColorManager.darkTextColor /*darkTextButtonColor*/),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: ColorManager.darkTextColor),
      bodyLarge: TextStyle(color: ColorManager.darkTextColor),
      titleMedium: TextStyle(color: ColorManager.darkTextColor),
      titleLarge: TextStyle(color: ColorManager.darkTextColor),
      labelLarge: TextStyle(color: ColorManager.darkTextColor),
      headlineSmall: TextStyle(color: ColorManager.darkTextColor),
      headlineLarge: TextStyle(color: ColorManager.darkTextColor),
    ),
    inputDecorationTheme:const InputDecorationTheme(
      labelStyle: TextStyle(color: ColorManager.darkTextColor),
      hintStyle: TextStyle(color: ColorManager.darkTextColor),
      border:  OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.darkSecondaryColor,
          ),
          borderRadius: BorderRadius.zero),
      errorBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.darkSecondaryColor),
          borderRadius: BorderRadius.zero),
      enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.darkSecondaryColor),
          borderRadius: BorderRadius.zero),
      disabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.darkSecondaryColor),
          borderRadius: BorderRadius.zero),
      focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.darkSecondaryColor),
          borderRadius: BorderRadius.zero),
      focusedErrorBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.darkSecondaryColor),
          borderRadius: BorderRadius.zero),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
      textColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      // backgroundColor: ColorManager.primaryColor,
      unselectedItemColor: ColorManager.secondaryColor,

      showSelectedLabels: false,
      showUnselectedLabels: false,
      // selectedIconTheme: IconThemeData(color: ColorManager.secondaryColor),
    ),
    progressIndicatorTheme:const 
        ProgressIndicatorThemeData(color: ColorManager.darkTextColor),
    expansionTileTheme:const  ExpansionTileThemeData(
        collapsedBackgroundColor: ColorManager.cursorColor,
        backgroundColor: ColorManager.cursorColor,
        iconColor: Colors.white,
        collapsedIconColor: Colors.white),
    radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith(
            (states) => ColorManager.darkSecondaryColor)),
    dialogBackgroundColor: ColorManager.darkBackgroundColor,
    dialogTheme: const DialogTheme(
        backgroundColor: ColorManager.darkBackgroundColor,
        surfaceTintColor: ColorManager.darkBackgroundColor),
    popupMenuTheme: PopupMenuThemeData(
        color: MaterialStateColor.resolveWith(
            (states) => ColorManager.darkBackgroundColor),
        surfaceTintColor: MaterialStateColor.resolveWith(
            (states) => ColorManager.darkBackgroundColor)),
    datePickerTheme: DatePickerThemeData(
        backgroundColor: ColorManager.darkBackgroundColor,
        // surfaceTintColor: ColorManager.darkBackgroundColor,
/*      backgroundColor: ColorManager.primaryColor,
      surfaceTintColor: ColorManager.primaryColor,
      shadowColor: ColorManager.primaryColor,
      headerBackgroundColor: ColorManager.primaryColor,
      headerForegroundColor: ColorManager.primaryColor,*/
        /*yearBackgroundColor: MaterialStateColor.resolveWith(
          (states) => ColorManager.darkBackgroundColor),*/
        yearForegroundColor:
            MaterialStateColor.resolveWith((states) => Colors.white),
        /* todayBackgroundColor:
          MaterialStateColor.resolveWith((states) => ColorManager.primaryColor),*/
        /*todayForegroundColor:
          MaterialStateColor.resolveWith((states) => Colors.white),*/
        dayStyle: const TextStyle(color: Colors.white),
        weekdayStyle: const TextStyle(color: Colors.white),
        yearStyle: const TextStyle(color: Colors.white),
        headerForegroundColor: Colors.white,
        // headerHeadlineStyle: TextStyle(color: Colors.white),
        // headerBackgroundColor: Colors.white,
        headerHelpStyle: const TextStyle(color: Colors.white)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorManager.primaryColor,
      foregroundColor: Colors.white,
    ),
    checkboxTheme:const  CheckboxThemeData(side: BorderSide(color: Colors.white)));
