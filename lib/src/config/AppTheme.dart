import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppTheme {
  static ThemeData lightTheme() {
    const defaultTextColor = Color(0xFF000000);
    // Basic Config
    final base = ThemeData.light().copyWith(
      primaryColor: const Color(0xFF06283D),
      disabledColor: const Color(0xFFEFECEA),
      colorScheme: const ColorScheme(
        primary: Color(0xFF06283D),
        primaryContainer: Color(0xFF06283D),
        secondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFFFFFFF),
        surface: Color(0xFFFFFFFF),
        background: Color(0xFFFFFFFF),
        error: Color(0xFFFF5F55),
        onPrimary: Color(0xFF000000),
        onSecondary: Color(0xFFFFFFFF),
        onSurface: Color(0xFF000000),
        onBackground: Color(0xFF000000),
        onError: Color(0xFF000000),
        brightness: Brightness.light,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 36,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        headline2: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 30,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 26,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        headline4: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        headline5: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        headline6: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        subtitle1: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        bodyText1: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        bodyText2: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        caption: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        button: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
        overline: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
          letterSpacing: 0,
          color: defaultTextColor,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontFamilyFallback: ["Roboto"],
        ),
      ),
    );
    // Other Configs
    return base.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textSelectionTheme: base.textSelectionTheme.copyWith(
        cursorColor: base.colorScheme.primary,
        selectionColor: base.colorScheme.primary,
        selectionHandleColor: base.colorScheme.primary,
      ),
      splashColor: base.disabledColor,
      primaryColor: base.colorScheme.primary,
      primaryColorLight: base.colorScheme.primary,
      primaryColorDark: base.colorScheme.primary,
      backgroundColor: base.colorScheme.background,
      scaffoldBackgroundColor: base.colorScheme.background,
      bottomAppBarColor: const Color(0xFF000000),
      appBarTheme: base.appBarTheme.copyWith(
        elevation: 0,
        iconTheme: const IconThemeData.fallback().copyWith(
          color: const Color(0xFF000000),
        ),
        actionsIconTheme: const IconThemeData.fallback().copyWith(
          color: const Color.fromRGBO(6, 40, 61, 1),
        ),
        color: const Color(0xFFFFFFFF),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        foregroundColor: Colors.black,
        titleTextStyle: base.textTheme.headline4,
        titleSpacing: 0
      ),
      bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
        backgroundColor: const Color(0xFFFFFFFF),
        selectedItemColor: const Color(0xFF06283D),
        unselectedItemColor: const Color(0xFF06283D).withOpacity(0.6),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: base.textTheme.overline,
        unselectedLabelStyle: base.textTheme.overline,
        elevation: 1,
      ),
      tooltipTheme: base.tooltipTheme.copyWith(
        textStyle:
            base.textTheme.overline?.copyWith(color: const Color(0xFFFFFFFF)),
      ),
      cardColor: base.colorScheme.background,
      dividerColor: base.disabledColor,
      cardTheme: base.cardTheme.copyWith(
        elevation: 0.0,
        color: base.colorScheme.surface,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: base.colorScheme.onPrimary.withOpacity(.3), width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
      ),
      snackBarTheme: base.snackBarTheme.copyWith(
        elevation: 0.0,
        shape: const BeveledRectangleBorder(),
        backgroundColor: base.colorScheme.onBackground,
        contentTextStyle: base.textTheme.caption?.copyWith(
          color: base.colorScheme.background,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: base.colorScheme.primary),
    );
  }
}
