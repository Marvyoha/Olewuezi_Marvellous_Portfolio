import 'package:flutter/material.dart';
import 'responsive_extensions.dart';

class ResponsiveSpacing {
  static EdgeInsetsGeometry padding(BuildContext context) => EdgeInsets.symmetric(
    horizontal: context.isMobile ? 14.0 : context.isTablet ? 20.0 : 100.0,
    vertical: context.isMobile ? 14.0 : context.isTablet ? 20.0 : 100.0,
  );

  static EdgeInsetsGeometry paddingMain(BuildContext context) => EdgeInsets.fromLTRB(
    context.isMobile ? 14.0 : context.isTablet ? 20.0 : 100.0,
    context.isMobile ? 9.0 : context.isTablet ? 13.0 : 56.0,
    context.isMobile ? 14.0 : context.isTablet ? 20.0 : 100.0,
    context.isMobile ? 20.0 : context.isTablet ? 30.0 : 100.0,
  );

  static double spaceLarge(BuildContext context, {bool isWidth = false}) {
    final base = context.screenHeight * 0.06;
    return isWidth ? context.screenWidth * 0.06 : base;
  }

  static double spaceMedium(BuildContext context, {bool isWidth = false}) {
    const base = 30.0;
    return isWidth ? 30.0 : base;
  }

  static double spaceSmall(BuildContext context, {bool isWidth = false}) {
    const value = 16.0;
    return isWidth ? value : value;
  }
}
