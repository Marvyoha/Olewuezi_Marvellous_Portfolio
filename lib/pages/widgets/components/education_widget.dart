import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/app_fonts.dart';
import 'package:my_portfolio_website/core/models/education_model.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'package:my_portfolio_website/pages/widgets/components/portfolio_divider.dart';

class EducationWidget extends StatelessWidget {
  final EducationModel education;
  const EducationWidget({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop) {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(education.image, fit: BoxFit.fill),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: context.screenWidth * 0.6, child: Text(education.degree, style: WriteStyles.subtitle(context))),
                  SizedBox(width: context.screenWidth * 0.2, child: Text(education.school, style: WriteStyles.body2(context).copyWith(fontWeight: FontWeight.bold))),
                  Text(education.timeRange, style: WriteStyles.body2(context)),
                  SizedBox(width: context.screenWidth * 0.2, child: Text(education.location, style: WriteStyles.body2(context))),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
        ],
      );
    }

    return Column(
      children: [
        SizedBox(height: 100, width: 100, child: Image.asset(education.image, fit: BoxFit.fill)),
        const SizedBox(height: 10),
        Column(
          children: [
            Text(education.degree, style: WriteStyles.subtitle(context)),
            Text(education.school, style: WriteStyles.subtitle(context).copyWith(fontWeight: FontWeight.bold)),
            Text(education.timeRange, style: WriteStyles.body2(context)),
            Text(education.location, style: WriteStyles.body2(context)),
          ],
        ),
        const SizedBox(height: 20),
        const PortfolioDivider(),
      ],
    );
}
}
