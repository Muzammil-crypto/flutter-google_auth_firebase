import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  TextStyle get headlineSmall => GoogleFonts.barlow(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

  TextStyle get headlineMedium => GoogleFonts.barlow(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );

  TextStyle get headlineLarge => GoogleFonts.barlow(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  TextStyle get titleSmall => GoogleFonts.barlow(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  TextStyle get titleLarge => GoogleFonts.barlow(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  TextStyle get titleMedium => GoogleFonts.barlow(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  TextStyle get bodySmall => GoogleFonts.barlow(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  TextStyle get bodyMedium => GoogleFonts.barlow(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  TextStyle get bodyLarge => GoogleFonts.barlow(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  TextStyle get labelLarge => GoogleFonts.barlow(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  TextStyle get labelSmall => GoogleFonts.barlow(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
}
