import 'package:flutter/material.dart';
import 'package:my_portfolio_website/pages/widgets/components/certificates_widget.dart';
import 'package:my_portfolio_website/pages/widgets/components/experience_widget.dart';
import 'package:my_portfolio_website/pages/widgets/components/main_header.dart';
import 'components/education_widget.dart';
import 'components/section_header.dart';
import '../../constants/app_strings.dart';
import '../../core/responsive/responsive_extensions.dart';
import 'package:my_portfolio_website/pages/widgets/components/portfolio_divider.dart';

class QualificationsContent extends StatelessWidget {
  const QualificationsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const MainHeader(content: 'Qualifications'),
        const SizedBox(height: 24),
        _educationSection(context),
        if (context.isDesktop) const SizedBox(height: 24),
        if (context.isDesktop) const PortfolioDivider(),
        const SizedBox(height: 24),
        _certificatesSection(context),
        if (context.isDesktop) const SizedBox(height: 24),
        if (context.isDesktop) const PortfolioDivider(),
        const SizedBox(height: 24),
        _experienceSection(context),
      ],
    );
  }

  Widget _educationSection(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(content: 'Education'),
        const SizedBox(height: 20),
        ...Content.educationList.map((edu) => Column(
          children: [
            EducationWidget(education: edu),
            const SizedBox(height: 20),
          ],
        )),
      ],
    );
  }

  Widget _certificatesSection(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(content: 'Certificates'),
        const SizedBox(height: 20),
        if (context.isDesktop)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: Content.certificatesList
                    .asMap()
                    .entries
                    .where((e) => e.key == 0 || e.key % 2 == 0)
                    .map((e) => Column(children: [CertificatesWidget(cert: e.value), const SizedBox(height: 20)]))
                    .toList(),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: Content.certificatesList
                    .asMap()
                    .entries
                    .where((e) => e.key % 2 != 0)
                    .map((e) => Column(children: [CertificatesWidget(cert: e.value), const SizedBox(height: 20)]))
                    .toList(),
                ),
              ),
            ],
          )
        else
          Column(
            children: Content.certificatesList.map((cert) => Column(
              children: [
                CertificatesWidget(cert: cert),
                const SizedBox(height: 20),
              ],
            )).toList(),
          ),
      ],
    );
  }

  Widget _experienceSection(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(content: 'Experience'),
        const SizedBox(height: 20),
        ...Content.experienceList.map((exp) => Column(
          children: [
            ExperienceWidget(exp: exp),
            const SizedBox(height: 20),
          ],
        )),
      ],
    );
  }
}
