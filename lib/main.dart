import 'package:flutter/material.dart';
import 'package:my_portfolio_website/pages/homepage_responsive.dart';
import 'package:provider/provider.dart';

import 'core/providers/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Olewuezi Marvellous',
            debugShowCheckedModeBanner: false,
            theme: Provider.of<ThemeProvider>(context).themeMode,
            home: const HomepageResponsive(),
          );
        },
      ),
    );
  }
}
