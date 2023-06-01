import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/router/guards/elite_home_guard.dart';
import 'package:elite_one/src/router/router.gr.dart';

@AutoRouterConfig()
class EliteRouter extends $EliteRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: EliteWelcome.page,
          path: '/welcome',
        ),
        AutoRoute(
          page: EliteRoot.page,
          path: '/elite-home',
          initial: true,
          guards: [
            EliteHomeGuard(),
          ],
          children: [
            AutoRoute(
              page: EliteMain.page,
              path: 'elite',
            ),
            AutoRoute(
              page: EliteInfos.page,
              path: 'elite-infos',
            ),
            AutoRoute(
              page: EliteStore.page,
              path: 'elite-store',
            ),
            AutoRoute(
              page: EliteUserProfile.page,
              path: 'elite-user-profile',
            ),
          ],
        ),
        AutoRoute(
          page: PlayerDetails.page,
          path: '/player-details/:playerID',
        ),
      ];
}
