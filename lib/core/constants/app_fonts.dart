import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../responsive/responsive_extensions.dart';
import '../responsive/responsive_value.dart';

class WriteStyles {
  static TextStyle header1(BuildContext context) {
    final size =
        const ResponsiveVal<double>(mobile: 31, tablet: 43, desktop: 50)
            .value(context);
    final weight = context.isMobile ? FontWeight.w600 : FontWeight.w700;
    return GoogleFonts.inter(
      color: Theme.of(context).colorScheme.primary,
      fontSize: size,
      fontWeight: weight,
    );
  }

  static TextStyle header2(BuildContext context) {
    final size =
        const ResponsiveVal<double>(mobile: 24, tablet: 24, desktop: 36)
            .value(context);
    return GoogleFonts.inter(
      color: Theme.of(context).colorScheme.primary,
      fontSize: size,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle header3(BuildContext context) {
    final size =
        const ResponsiveVal<double>(mobile: 18, tablet: 18, desktop: 30)
            .value(context);
    return GoogleFonts.inter(
      color: Theme.of(context).colorScheme.primary,
      fontSize: size,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle subtitle(BuildContext context) {
    final size =
        const ResponsiveVal<double>(mobile: 18, tablet: 18, desktop: 20)
            .value(context);
    return GoogleFonts.inter(
      color: Theme.of(context).colorScheme.primary,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle body1(BuildContext context) {
    final size =
        const ResponsiveVal<double>(mobile: 17, tablet: 17, desktop: 18)
            .value(context);
    final weight = context.isMobile ? FontWeight.w500 : FontWeight.w400;
    return GoogleFonts.inter(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: size,
      fontStyle: context.isMobile ? FontStyle.normal : FontStyle.normal,
      fontWeight: weight,
    );
  }

  static TextStyle body2(BuildContext context) {
    return GoogleFonts.inter(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }

  // FOR SECTION HEADERS (ABOUT ME, EXP)
  static TextStyle body3(BuildContext context) {
    return GoogleFonts.inter(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }
}
