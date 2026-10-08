enum Platform { mobile, tablet, desktop }

class ResponsiveConfig {
  static const double mobileMax = 767;
  static const double tabletMax = 1024;

  static Platform fromWidth(double width) {
    if (width <= mobileMax) return Platform.mobile;
    if (width <= tabletMax) return Platform.tablet;
    return Platform.desktop;
  }
}
