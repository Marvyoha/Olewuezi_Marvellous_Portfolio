import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:my_portfolio_website/constants/app_strings.dart';
import 'package:my_portfolio_website/constants/app_fonts.dart';
import 'package:my_portfolio_website/pages/widgets/components/main_header.dart';

class GetInTouchContent extends StatelessWidget {
  const GetInTouchContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainHeader(content: 'Get in touch'),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border.all(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text('Get in touch',
              style: WriteStyles.body2(context)
                  .copyWith(color: Theme.of(context).colorScheme.primary)),
        ),
        const SizedBox(height: 20),
        Text(
          "What's next? Feel free to reach out to me if you're looking for a developer, have a query, or simply want to connect.",
          style: WriteStyles.body2(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        _contactRow(context, Symbols.email, Content.email),
        const SizedBox(height: 10),
        _contactRow(context, Symbols.phone, Content.phoneNumber),
      ],
    );
  }

  Widget _contactRow(BuildContext context, IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        SelectableText(text, style: WriteStyles.body3(context)),
      ],
    );
  }
}
