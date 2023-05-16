import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/router/router.gr.dart';

@AutoRouterConfig()
class EliteRouter extends $EliteRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: EliteWelcome.page,
          initial: true,
        ),
      ];
}
