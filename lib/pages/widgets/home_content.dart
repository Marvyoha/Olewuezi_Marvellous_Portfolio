import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:my_portfolio_website/constants/app_fonts.dart';
import 'package:my_portfolio_website/constants/app_strings.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeContents extends StatelessWidget {
  const HomeContents({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isDesktop
        ? _buildDesktop(context)
        : _buildMobileTablet(context);
  }

  Widget _buildMobileTablet(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: _profileImage(context)),
        const SizedBox(height: 16),
        Text(Content.introHeader, style: WriteStyles.header1(context)),
        const SizedBox(height: 8),
        Text(Content.introduction, style: WriteStyles.body1(context)),
        const SizedBox(height: 16),
        _infoRow(context, Icons.home_outlined, Content.location),
        const SizedBox(height: 8),
        _infoRow(context, Icons.email_outlined, Content.email,
            selectable: true),
        const SizedBox(height: 8),
        _infoRow(context, Icons.circle, Content.availability,
            color: Colors.green),
        const SizedBox(height: 16),
        Row(
          children: [
            _socialButton(context, Content.githubLink, SimpleIcons.github, 25),
            const SizedBox(width: 30),
            _socialButton(
                context, Content.linkedinLink, Symbols.link_rounded, 25),
          ],
        )
      ],
    );
  }

  Widget _buildDesktop(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.screenWidth * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Content.introHeader, style: WriteStyles.header1(context)),
              const SizedBox(height: 8),
              Text(Content.introduction, style: WriteStyles.body1(context)),
              const SizedBox(height: 30),
              _infoRow(context, Icons.home_outlined, Content.location),
              const SizedBox(height: 12),
              _infoRow(context, Icons.email_outlined, Content.email,
                  selectable: true),
              const SizedBox(height: 12),
              _infoRow(context, Icons.circle, Content.availability,
                  color: Colors.green),
              const SizedBox(height: 30),
              Row(
                children: [
                  _socialButton(
                      context, Content.githubLink, SimpleIcons.github, 40),
                  const SizedBox(width: 20),
                  _socialButton(
                      context, Content.linkedinLink, Symbols.link_rounded, 40),
                ],
              )
            ],
          ),
        ),
        const SizedBox(width: 30),
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.topRight,
            child: _profileImage(context, maxWidth: 0.3),
          ),
        )
      ],
    );
  }

  Widget _profileImage(BuildContext context, {double? maxWidth}) {
    final width = maxWidth ?? 0.6;
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
          child: Image.asset(Content.profile, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _infoRow(BuildContext context, IconData icon, String text,
      {bool selectable = false, Color? color}) {
    final widget = selectable
        ? SelectableText(text, style: WriteStyles.body1(context))
        : Text(text, style: WriteStyles.body1(context));

    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 10),
        Expanded(child: widget),
      ],
    );
  }

  Widget _socialButton(
      BuildContext context, Uri link, IconData icon, double size) {
    return IconButton(
      onPressed: () async {
        if (await canLaunchUrl(link)) {
          await launchUrl(link, mode: LaunchMode.externalApplication);
        }
      },
      icon: Icon(icon, size: size),
    );
  }
}
