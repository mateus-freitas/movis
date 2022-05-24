import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movis/infrastructure/core/constants.dart';
import 'package:movis/presentation/core/components/buttons/app_button/app_button_style_builder.dart';
import 'package:movis/presentation/core/theme/app_colors.dart';

ThemeData get darkTheme {
  final TextTheme textTheme =
      isAppleDevice ? Typography.whiteCupertino : Typography.whiteMountainView;
  return ThemeData.dark().copyWith(
      primaryColor: AppColors.primaryLight,
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionColor: Colors.white.withOpacity(0.3),
          selectionHandleColor: Colors.white),
      inputDecorationTheme: _buildInputDecorationTheme(),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.neutral20,
          unselectedItemColor: Colors.white,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryLight),
      scaffoldBackgroundColor: Colors.black,
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        primaryColor: AppColors.primaryLight,
        barBackgroundColor: AppColors.neutral20,
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
            tabLabelTextStyle:
                TextStyle(fontFamily: 'OpenSans', color: Colors.white)),
        scaffoldBackgroundColor: Colors.black,
      ),
      focusColor: AppColors.neutral20,
      hoverColor: AppColors.neutral20,
      splashColor: Colors.white.withOpacity(0.16),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppButtonStyleBuilder(forDark: true).primary),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: AppButtonStyleBuilder(forDark: true).secondary),
      textButtonTheme:
          TextButtonThemeData(style: AppButtonStyleBuilder(forDark: true).text),
      textTheme: _appTextThemeFrom(textTheme),
      appBarTheme: const AppBarTheme());
}

TextTheme _appTextThemeFrom(TextTheme theme, {bool isDark = true}) {
  final baseStyle = TextStyle(
      fontFamily: 'OpenSans', color: isDark ? Colors.white : Colors.black);
  return theme.copyWith(
      headline1: baseStyle.copyWith(
          fontSize: isDesktop ? 64 : 48,
          height: 1.5,
          fontWeight: FontWeight.w700),
      headline2: baseStyle.copyWith(
          fontSize: isDesktop ? 48 : 32,
          height: 1.5,
          fontWeight: FontWeight.w700),
      headline3: baseStyle.copyWith(
          fontSize: isDesktop ? 32 : 24,
          height: 1.5,
          fontWeight: FontWeight.w700),
      headline4: baseStyle.copyWith(
          fontSize: isDesktop ? 24 : 20,
          height: 1.5,
          fontWeight: FontWeight.w700),
      caption: baseStyle.copyWith(
          fontSize: isDesktop ? 14 : 10,
          height: 1.5,
          fontWeight: FontWeight.w400),
      bodyText1: baseStyle.copyWith(
          fontSize: isDesktop ? 20 : 16,
          height: 1.5,
          fontWeight: FontWeight.w400),
      bodyText2: baseStyle.copyWith(
          fontSize: isDesktop ? 16 : 12,
          height: 1.5,
          fontWeight: FontWeight.w400));
}

InputDecorationTheme _buildInputDecorationTheme({bool forDarkMode = true}) {
  final baseInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
          color: forDarkMode ? Colors.white : Colors.black, width: 1),
      borderRadius: BorderRadius.circular(8.0),
      gapPadding: 8.0);

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    disabledBorder: baseInputBorder.copyWith(
      borderSide: BorderSide(
          color: forDarkMode ? AppColors.neutral30 : AppColors.neutral70,
          width: 1),
    ),
    focusColor: Colors.white,
    errorBorder: baseInputBorder.copyWith(
      borderSide: const BorderSide(color: AppColors.danger, width: 1),
    ),
    iconColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return forDarkMode ? AppColors.neutral40 : AppColors.neutral70;
      }
      return forDarkMode ? Colors.white : Colors.black;
    }),
    filled: true,
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.error) && !forDarkMode) {
        return AppColors.danger.withOpacity(0.08);
      }
      return Colors.transparent;
    }),
    focusedErrorBorder: baseInputBorder.copyWith(
      borderSide: const BorderSide(color: AppColors.danger, width: 2),
    ),
    labelStyle: MaterialStateTextStyle.resolveWith((states) {
      final style = TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: forDarkMode ? Colors.white : Colors.black);
      if (states.contains(MaterialState.disabled)) {
        return style.copyWith(
            color: forDarkMode ? AppColors.neutral40 : AppColors.neutral70);
      }
      if (states.contains(MaterialState.focused)) {
        if (states.contains(MaterialState.error)) {
          return style.copyWith(color: AppColors.danger);
        }
      }
      return style;
    }),
    hintStyle: const TextStyle(fontFamily: 'OpenSans', fontSize: 16),
    errorStyle: const TextStyle(
        fontFamily: 'OpenSans', fontSize: 14, color: AppColors.danger),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    hoverColor: forDarkMode ? AppColors.neutral10 : AppColors.neutral90,
    focusedBorder: baseInputBorder.copyWith(
      borderSide: BorderSide(
          color: forDarkMode ? Colors.white : Colors.black, width: 2),
    ),
    border: baseInputBorder,
  );
}
