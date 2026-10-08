import 'package:flutter/material.dart';
import 'package:my_portfolio_website/pages/widgets/components/project_widget.dart';
import '../../core/constants/app_strings.dart';
import '../../core/responsive/responsive_spacing.dart';
import 'components/main_header.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainHeader(content: 'Projects'),
        Column(
          children: Content.projectList
              .map((project) => Column(
                    children: [
                      ProjectWidget(projects: project),
                      SizedBox(height: ResponsiveSpacing.spaceLarge(context)),
                    ],
                  ))
              .toList(),
        ),
      ],
    );
  }
}
