import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:my_portfolio_website/core/constants/app_fonts.dart';
import 'package:my_portfolio_website/core/constants/app_strings.dart';
import 'package:my_portfolio_website/core/responsive/responsive_extensions.dart';
import 'package:my_portfolio_website/core/responsive/responsive_spacing.dart';
import 'package:my_portfolio_website/core/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/about_me_content.dart';
import 'widgets/home_content.dart';
import 'widgets/project_content.dart';
import 'widgets/qualifications_content.dart';
import 'widgets/skills_content.dart';
import 'widgets/get_in_touch_content.dart';

class HomepageResponsive extends StatefulWidget {
  const HomepageResponsive({super.key});

  @override
  State<HomepageResponsive> createState() => _HomepageResponsiveState();
}

class _HomepageResponsiveState extends State<HomepageResponsive> {
  bool _isRefreshing = false;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: context.isMobile || context.isTablet
          ? AppBar(
              centerTitle: true,
              title: Text(Content.name, style: WriteStyles.header2(context)),
              backgroundColor: Theme.of(context).colorScheme.surface,
              // actions: [
              //   IconButton(
              //     icon: Icon(themeProvider.isLight ? Symbols.sunny : Symbols.moon_stars),
              //     onPressed: () => themeProvider.toggleTheme(context),
              //   ),
              // ],
            )
          : null,
      body: context.isMobile || context.isTablet
          ? _buildScrollingContent(context, themeProvider)
          : _buildDesktopContent(context, themeProvider),
      drawer: context.isMobile || context.isTablet
          ? _buildDrawer(context, themeProvider)
          : null,
    );
  }

  Widget _buildScrollingContent(
      BuildContext context, ThemeProvider themeProvider) {
    return RefreshIndicator(
      onRefresh: _handleRefresh,
      child: ListView(
        children: [
          _buildSection(Theme.of(context).colorScheme.surface,
              const HomeContents(), ResponsiveSpacing.padding(context)),
          _buildSection(Theme.of(context).colorScheme.inverseSurface,
              const AboutMeContent(), ResponsiveSpacing.paddingMain(context)),
          _buildSection(
              Theme.of(context).colorScheme.surface,
              const QualificationsContent(),
              ResponsiveSpacing.paddingMain(context)),
          _buildSection(Theme.of(context).colorScheme.inverseSurface,
              const SkillsContent(), ResponsiveSpacing.paddingMain(context)),
          _buildSection(Theme.of(context).colorScheme.surface,
              const ProjectContent(), ResponsiveSpacing.paddingMain(context)),
          _buildSection(
              Theme.of(context).colorScheme.inverseSurface,
              const GetInTouchContent(),
              ResponsiveSpacing.paddingMain(context)),
        ],
      ),
    );
  }

  Widget _buildDesktopContent(
      BuildContext context, ThemeProvider themeProvider) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 10, 100, 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Content.name, style: WriteStyles.header3(context)),
              Row(
                children: [
                  IconButton(
                    icon: Icon(themeProvider.isLight
                        ? Symbols.sunny
                        : Symbols.moon_stars),
                    onPressed: () => themeProvider.toggleTheme(context),
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(36),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () async {
                        if (await canLaunchUrl(Content.cvLink)) {
                          await launchUrl(Content.cvLink,
                              mode: LaunchMode.externalApplication);
                        }
                      },
                      child: Text('View CV',
                          style: WriteStyles.body1(context).copyWith(
                              color: Theme.of(context).colorScheme.surface)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            controller: _scrollController,
            children: [
              _buildSection(Theme.of(context).colorScheme.surface,
                  const HomeContents(), ResponsiveSpacing.padding(context)),
              _buildSection(
                  Theme.of(context).colorScheme.inverseSurface,
                  const AboutMeContent(),
                  ResponsiveSpacing.paddingMain(context)),
              _buildSection(
                  Theme.of(context).colorScheme.surface,
                  const QualificationsContent(),
                  ResponsiveSpacing.paddingMain(context)),
              _buildSection(
                  Theme.of(context).colorScheme.inverseSurface,
                  const SkillsContent(),
                  ResponsiveSpacing.paddingMain(context)),
              _buildSection(
                  Theme.of(context).colorScheme.surface,
                  const ProjectContent(),
                  ResponsiveSpacing.paddingMain(context)),
              _buildSection(
                  Theme.of(context).colorScheme.inverseSurface,
                  const GetInTouchContent(),
                  ResponsiveSpacing.paddingMain(context)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSection(Color color, Widget child, EdgeInsetsGeometry padding) {
    return Container(
      color: color,
      padding: padding,
      child: child,
    );
  }

  Future<void> _handleRefresh() async {
    if (_isRefreshing) return;
    setState(() => _isRefreshing = true);
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() => _isRefreshing = false);
    }
  }

  Widget _buildDrawer(BuildContext context, ThemeProvider themeProvider) {
    return Drawer(
      width: context.screenWidth * 0.75,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              leading: Text('Theme',
                  style: WriteStyles.body1(context)
                      .copyWith(color: Theme.of(context).colorScheme.primary)),
              trailing: Icon(
                  themeProvider.isLight ? Symbols.sunny : Symbols.moon_stars),
              onTap: () {
                themeProvider.toggleTheme(context);
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: Theme.of(context).colorScheme.primary,
              onTap: () async {
                if (await canLaunchUrl(Content.cvLink)) {
                  await launchUrl(Content.cvLink,
                      mode: LaunchMode.externalApplication);
                  if (context.mounted) Navigator.pop(context);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text('View CV',
                  style: WriteStyles.body1(context)
                      .copyWith(color: Theme.of(context).colorScheme.surface)),
            )
          ],
        ),
      ),
    );
  }
}
