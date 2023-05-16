// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:elite_one/src/features/onboarding/presentation/screens/welcome.dart'
    as _i1;

abstract class $EliteRouter extends _i2.RootStackRouter {
  $EliteRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    EliteWelcome.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EliteWelcome(),
      );
    }
  };
}

/// generated route for
/// [_i1.EliteWelcome]
class EliteWelcome extends _i2.PageRouteInfo<void> {
  const EliteWelcome({List<_i2.PageRouteInfo>? children})
      : super(
          EliteWelcome.name,
          initialChildren: children,
        );

  static const String name = 'EliteWelcome';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
