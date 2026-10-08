import 'package:flutter/material.dart';
import '../../core/constants/app_strings.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'components/main_header.dart';
import 'components/skills_widget.dart';

class SkillsContent extends StatelessWidget {
  const SkillsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const MainHeader(content: 'Skills'),
          Wrap(
            spacing: 20,
            runSpacing: context.screenHeight * 0.02,
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            children: Content.skillsList
                .map((skills) => SkillsWidget(skills: skills))
                .toList(),
          ),
        ],
      ),
    );
  }
}
