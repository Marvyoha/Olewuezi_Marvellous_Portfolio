import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:my_portfolio_website/core/models/projects_model.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'package:my_portfolio_website/core/constants/app_fonts.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel projects;
  const ProjectWidget({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    final isLinkProvided = projects.projectLink != '';
    final isStoreLinkProvided = projects.storeLink != '';

    return Material(
      shadowColor: Theme.of(context).colorScheme.secondary,
      elevation: context.isDesktop ? 5 : 2,
      borderRadius: BorderRadius.circular(40),
      child: Padding(
        padding: EdgeInsets.all(context.isDesktop ? 48 : 30),
        child: context.isDesktop
            ? _buildDesktop(context, isLinkProvided, isStoreLinkProvided)
            : _buildMobileTablet(context, isLinkProvided, isStoreLinkProvided),
      ),
    );
  }

  Widget _buildDesktop(
      BuildContext context, bool isLinkProvided, bool isStoreLinkProvided) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: context.screenWidth * 0.45,
          child: _content(context, isLinkProvided, isStoreLinkProvided),
        ),
        SizedBox(width: context.screenWidth * 0.05),
        SizedBox(
          width: context.screenWidth * 0.26,
          height: context.screenHeight * 0.7,
          child: _carousel(context, context.screenWidth * 0.32),
        ),
      ],
    );
  }

  Widget _buildMobileTablet(
      BuildContext context, bool isLinkProvided, bool isStoreLinkProvided) {
    return Column(
      children: [
        _carousel(context, double.infinity),
        const SizedBox(height: 24),
        _content(context, isLinkProvided, isStoreLinkProvided),
      ],
    );
  }

  Widget _content(
      BuildContext context, bool isLinkProvided, bool isStoreLinkProvided) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(projects.projectTitle, style: WriteStyles.header1(context)),
        const SizedBox(height: 8),
        Text(projects.projectDescription, style: WriteStyles.body1(context)),
        const SizedBox(height: 20),
        Wrap(
          spacing: 7,
          runSpacing: context.screenHeight * 0.02,
          children: projects.projectStack
              .map((stack) => Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.inverseSurface,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(stack, style: WriteStyles.body3(context)),
                  ))
              .toList(),
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 10,
          children: [
            if (isLinkProvided)
              _linkButton(context, Uri.parse(projects.projectLink ?? ''),
                  'View Source Code', SimpleIcons.github, 210),
            if (isStoreLinkProvided)
              _linkButton(context, Uri.parse(projects.storeLink ?? ''),
                  'View In Store', Symbols.store, 150),
          ],
        ),
      ],
    );
  }

  Widget _carousel(BuildContext context, double maxWidth) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: CarouselSlider(
        items: projects.projectImage
            .map((image) => Image.asset(image, fit: BoxFit.fitHeight))
            .toList(),
        options: CarouselOptions(
          viewportFraction: 1,
          height: context.isDesktop
              ? context.screenHeight * 0.7
              : context.screenHeight * 0.4,
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
      ),
    );
  }

  Widget _linkButton(BuildContext context, Uri link, String text, IconData icon,
      double width) {
    return TextButton(
      onPressed: () async {
        if (await canLaunchUrl(link))
          await launchUrl(link, mode: LaunchMode.externalApplication);
      },
      style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: WriteStyles.body1(context)
                    .copyWith(color: Theme.of(context).colorScheme.surface)),
            Icon(icon, color: Theme.of(context).colorScheme.surface),
          ],
        ),
      ),
    );
  }
}
