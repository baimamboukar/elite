import 'package:auto_route/auto_route.dart';
import 'package:elite_one/i18n/translations.g.dart';
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/router/router.gr.dart' as elite_router;
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EliteRoot extends StatelessWidget {
  const EliteRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        elite_router.EliteMain(),
        elite_router.EliteInfos(),
        elite_router.EliteUserProfile(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (context, router) {
        // material 3 navigation bar
        return GestureDetector(
          child: NavigationBar(
            elevation: 0,
            height: 58,
            backgroundColor: context.colorScheme.onPrimary,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            indicatorColor: context.colorScheme.primary.withOpacity(.75),
            destinations: [
              NavigationDestination(
                icon: Image.asset(
                  Assets.assetsImagesFootball,
                  height: 24,
                  width: 24,
                ),
                label: 'Elite',
              ),
              NavigationDestination(
                icon: Image.asset(
                  Assets.assetsImagesPlayer,
                  height: 24,
                  width: 24,
                ),
                label: Loc.bottom_nav.standings,
              ),
              NavigationDestination(
                icon: const Icon(Icons.settings),
                label: Loc.bottom_nav.settings,
              ),
            ],
            selectedIndex: router.activeIndex,
            onDestinationSelected: (index) => router.setActiveIndex(index),
          ),
        );
      },
    );
  }
}
