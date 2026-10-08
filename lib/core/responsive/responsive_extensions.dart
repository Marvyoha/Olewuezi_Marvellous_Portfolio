import 'package:flutter/material.dart';
import 'responsive_config.dart';

extension ResponsiveContext on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  Platform get platform => ResponsiveConfig.fromWidth(screenWidth);
  bool get isMobile => platform == Platform.mobile;
  bool get isTablet => platform == Platform.tablet;
  bool get isDesktop => platform == Platform.desktop;
}
