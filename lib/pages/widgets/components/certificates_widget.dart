import 'package:flutter/material.dart';
import 'package:my_portfolio_website/core/models/certificates_model.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'package:my_portfolio_website/constants/app_fonts.dart';
import 'package:my_portfolio_website/pages/widgets/components/portfolio_divider.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificatesWidget extends StatelessWidget {
  final CertificatesModel cert;
  const CertificatesWidget({super.key, required this.cert});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (context.isDesktop)
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(cert.image, fit: BoxFit.fill),
              ),
              const SizedBox(width: 10),
              _content(context),
            ],
          )
        else
          Column(
            children: [
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(cert.image, fit: BoxFit.fill)),
              const SizedBox(height: 10),
              _content(context),
            ],
          ),
        const SizedBox(height: 10),
        const PortfolioDivider(),
      ],
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(cert.course, style: WriteStyles.subtitle(context)),
        Text(cert.issuedBy, style: WriteStyles.body2(context)),
        const SizedBox(height: 10),
        GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(cert.viewCredential)) {
                await launchUrl(cert.viewCredential,
                    mode: LaunchMode.externalApplication);
              }
            },
            child: Text('View Credential',
                style: WriteStyles.body1(context)
                    .copyWith(color: Theme.of(context).colorScheme.outline))),
      ],
    );
  }
}
