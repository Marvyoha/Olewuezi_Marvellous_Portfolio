import 'package:flutter/material.dart';
import 'package:my_portfolio_website/core/constants/app_fonts.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'package:my_portfolio_website/core/responsive/responsive_value.dart';

class MainHeader extends StatelessWidget {
  final String content;
  const MainHeader({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final indent =
        const ResponsiveVal<double>(mobile: 0.25, tablet: 0.25, desktop: 0.25)
            .value(context);

    return Column(
      children: [
        Text(content, style: WriteStyles.header1(context)),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 3,
              height: 1,
              indent: context.screenWidth * indent,
              endIndent: context.screenWidth * indent,
            ),
            Container(
              color: Theme.of(context).colorScheme.primary,
              height: context.screenHeight * 0.02,
              width: context.screenWidth * 0.05,
            ),
          ],
        ),
        SizedBox(height: context.screenHeight * 0.04),
      ],
    );
  }
}
