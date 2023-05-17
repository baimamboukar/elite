import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/router/router.gr.dart';

@AutoRouterConfig()
class EliteRouter extends $EliteRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: EliteWelcome.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: EliteRoot.page,
          path: '/elite-home',
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
          ],
        ),
      ];
}
