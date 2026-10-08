import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/core/models/experience_model.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'package:my_portfolio_website/core/constants/app_fonts.dart';

class ExperienceWidget extends StatelessWidget {
  final ExperienceModel exp;
  const ExperienceWidget({super.key, required this.exp});

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Theme.of(context).colorScheme.secondary,
      elevation: 5,
      borderRadius: BorderRadius.circular(40),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.isDesktop ? 30 : 20,
          vertical: context.isDesktop ? 30 : 20,
        ),
        child: context.isDesktop
            ? _buildDesktop(context)
            : _buildMobileTablet(context),
      ),
    );
  }

  Widget _buildDesktop(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          heightFactor: 1.5,
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(exp.image, fit: BoxFit.fill)),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: context.screenWidth * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(exp.companyName,
                  style: WriteStyles.subtitle(context)
                      .copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(exp.jobTitle, style: WriteStyles.subtitle(context)),
              const SizedBox(height: 20),
              Text(exp.jobDescription, style: WriteStyles.body2(context)),
            ],
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: context.screenWidth * 0.15,
          child: Text(exp.timeRange, style: WriteStyles.body2(context)),
        ),
      ],
    );
  }

  Widget _buildMobileTablet(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 80,
            width: 80,
            child: Image.asset(exp.image, fit: BoxFit.fill)),
        const SizedBox(height: 10),
        Text(exp.companyName,
            style: WriteStyles.subtitle(context)
                .copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(exp.timeRange, style: WriteStyles.body2(context)),
        const SizedBox(height: 10),
        Text(exp.jobTitle, style: WriteStyles.subtitle(context)),
        const SizedBox(height: 20),
        ExpandableText(
          exp.jobDescription,
          style: WriteStyles.body2(context),
          linkEllipsis: false,
          linkColor: Theme.of(context).colorScheme.outline,
          expandText: 'Show more',
          collapseText: 'Show less',
          maxLines: 5,
        ),
      ],
    );
  }
}
