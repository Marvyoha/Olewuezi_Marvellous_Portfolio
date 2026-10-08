import 'package:flutter/material.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';

class PortfolioDivider extends StatelessWidget {
  const PortfolioDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.screenHeight * 0.06),
        const Divider(),
        SizedBox(height: context.screenHeight * 0.06),
      ],
    );
  }
}
