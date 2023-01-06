import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static ThemeData get lightTheme => FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xff00296b),
          primaryContainer: Color(0xffa0c2ed),
          secondary: Color(0xffd26900),
          secondaryContainer: Color(0xffffd270),
          tertiary: Color(0xff5c5c95),
          tertiaryContainer: Color(0xffc8dbf8),
          appBarColor: Color(0xffc8dcf8),
          error: null,
        ),
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarOpacity: 0.95,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          blendOnColors: false,
          checkboxSchemeColor: SchemeColor.primary,
          radioSchemeColor: SchemeColor.primary,
          snackBarBackgroundSchemeColor: SchemeColor.surfaceTint,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  static ThemeData get darkTheme => FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xffb1cff5),
          primaryContainer: Color(0xff3873ba),
          secondary: Color(0xffffd270),
          secondaryContainer: Color(0xffd26900),
          tertiary: Color(0xffc9cbfc),
          tertiaryContainer: Color(0xff535393),
          appBarColor: Color(0xff00102b),
          error: null,
        ),
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.90,
        darkIsTrueBlack: true,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 30,
          checkboxSchemeColor: SchemeColor.primary,
          radioSchemeColor: SchemeColor.primary,
          snackBarBackgroundSchemeColor: SchemeColor.surfaceTint,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}

extension CoreColors on ThemeData {
  Color get coreRed => const Color.fromRGBO(242, 63, 64, 1);
  Color get coreWhite => const Color.fromARGB(255, 255, 255, 255);
  Color get coreTransparent => const Color.fromRGBO(0, 0, 0, 0);
  Color get coreBlack => const Color.fromRGBO(0, 0, 0, 1);
  Color get coreGreen => const Color.fromRGBO(76, 175, 80, 1);
}
