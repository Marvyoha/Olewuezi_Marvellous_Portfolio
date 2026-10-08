import 'package:flutter/material.dart';
import 'responsive_config.dart';

class ResponsiveVal<T> {
  final T mobile;
  final T tablet;
  final T desktop;
  
  const ResponsiveVal({
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  T value(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final p = ResponsiveConfig.fromWidth(width);
    switch (p) {
      case Platform.mobile:
        return mobile;
      case Platform.tablet:
        return tablet;
      case Platform.desktop:
        return desktop;
    }
  }
}
