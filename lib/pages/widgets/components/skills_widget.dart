import 'package:flutter/material.dart';
import 'package:my_portfolio_website/core/constants/app_fonts.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';

import '../../../core/models/skills_model.dart';

class SkillsWidget extends StatelessWidget {
  final SkillsModel skills;
  const SkillsWidget({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Icon(
            skills.icon,
            size: context.isDesktop ? 70 : 60,
          ),
          const SizedBox(height: 10),
          Text(skills.skill, style: WriteStyles.body2(context)),
        ],
      ),
    );
  }
}
