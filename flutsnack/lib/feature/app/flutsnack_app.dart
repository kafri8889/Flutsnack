import 'package:flutsnack/feature/dashboard/dashboard.dart';
import 'package:flutsnack/feature/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';
import '../../util.dart';

class FlutsnackApp extends StatelessWidget {
  const FlutsnackApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Inter", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const FlutsnackAppScreen(),
    );
  }
}

class FlutsnackAppScreen extends StatefulWidget {
  const FlutsnackAppScreen({super.key});

  @override
  State createState() => _FlutsnackAppScreenState();
}

class _FlutsnackAppScreenState extends State<FlutsnackAppScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: currentPageIndex == 0,
      onPopInvoked: (_) {
        setState(() {
          currentPageIndex = 0;
        });
      },
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  "assets/icons/dashboard_filled.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)
                ),
                icon: SvgPicture.asset(
                    "assets/icons/dashboard_outlined.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)
                ),
                label: "Dashboard"
            ),
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                    "assets/icons/search_normal_filled.svg",
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)
                ),
                icon: SvgPicture.asset(
                    "assets/icons/search_normal_outlined.svg",
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)
                ),
                label: "Search"
            ),
            NavigationDestination(
                selectedIcon: SvgPicture.asset(
                    "assets/icons/setting_filled.svg",
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)
                ),
                icon: SvgPicture.asset(
                    "assets/icons/setting_outlined.svg",
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)
                ),
                label: "Setting"
            )
          ],
        ),
        body: [
          const Dashboard(),
          const Search()
        ][currentPageIndex],
      ),
    );
  }
}
