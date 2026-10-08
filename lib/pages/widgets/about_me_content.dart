import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/app_fonts.dart';
import 'package:my_portfolio_website/constants/app_strings.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'components/main_header.dart';

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainHeader(content: 'About Me'),
        const SizedBox(height: 24),
        _buildContent(context),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    if (context.isDesktop) {
      return Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: context.screenWidth * 0.3,
              ),
              child: _profileImage(context),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: context.screenWidth * 0.47,
                child: Text(Content.aboutMeIntro,
                    style: WriteStyles.header3(context)),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: context.screenWidth * 0.47,
                child: Text(Content.aboutMe, style: WriteStyles.body2(context)),
              ),
            ],
          ),
        ],
      );
    }

    return Column(
      children: [
        Center(child: _profileImage(context)),
        const SizedBox(height: 24),
        Text(Content.aboutMeIntro, style: WriteStyles.header3(context)),
        const SizedBox(height: 12),
        ExpandableText(
          Content.aboutMe,
          style: WriteStyles.body1(context),
          linkEllipsis: false,
          linkColor: Theme.of(context).colorScheme.outline,
          expandText: 'Show more',
          collapseText: 'Show less',
          maxLines: 15,
        )
      ],
    );
  }

  Widget _profileImage(BuildContext context) {
    final width = context.isTablet ? 0.55 : 0.6;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: context.screenWidth * width,
        maxHeight: context.screenHeight * 0.9,
      ),
      child: Material(
        shadowColor: Theme.of(context).colorScheme.secondary,
        elevation: 5,
        borderRadius: BorderRadius.circular(40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(Content.profile2, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
