// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:elite_one/src/features/elite/presentation/screens/elite_infos.dart'
    as _i2;
import 'package:elite_one/src/features/elite/presentation/screens/elite_main.dart'
    as _i5;
import 'package:elite_one/src/features/elite/presentation/screens/elite_root.dart'
    as _i3;
import 'package:elite_one/src/features/elite/presentation/screens/elite_store.dart'
    as _i4;
import 'package:elite_one/src/features/elite/presentation/screens/elite_user_profile.dart'
    as _i6;
import 'package:elite_one/src/features/onboarding/presentation/screens/welcome.dart'
    as _i1;

abstract class $EliteRouter extends _i7.RootStackRouter {
  $EliteRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    EliteWelcome.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EliteWelcome(),
      );
    },
    EliteInfos.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EliteInfos(),
      );
    },
    EliteRoot.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EliteRoot(),
      );
    },
    EliteStore.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EliteStore(),
      );
    },
    EliteMain.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EliteMain(),
      );
    },
    EliteUserProfile.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.EliteUserProfile(),
      );
    },
  };
}

/// generated route for
/// [_i1.EliteWelcome]
class EliteWelcome extends _i7.PageRouteInfo<void> {
  const EliteWelcome({List<_i7.PageRouteInfo>? children})
      : super(
          EliteWelcome.name,
          initialChildren: children,
        );

  static const String name = 'EliteWelcome';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EliteInfos]
class EliteInfos extends _i7.PageRouteInfo<void> {
  const EliteInfos({List<_i7.PageRouteInfo>? children})
      : super(
          EliteInfos.name,
          initialChildren: children,
        );

  static const String name = 'EliteInfos';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EliteRoot]
class EliteRoot extends _i7.PageRouteInfo<void> {
  const EliteRoot({List<_i7.PageRouteInfo>? children})
      : super(
          EliteRoot.name,
          initialChildren: children,
        );

  static const String name = 'EliteRoot';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EliteStore]
class EliteStore extends _i7.PageRouteInfo<void> {
  const EliteStore({List<_i7.PageRouteInfo>? children})
      : super(
          EliteStore.name,
          initialChildren: children,
        );

  static const String name = 'EliteStore';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EliteMain]
class EliteMain extends _i7.PageRouteInfo<void> {
  const EliteMain({List<_i7.PageRouteInfo>? children})
      : super(
          EliteMain.name,
          initialChildren: children,
        );

  static const String name = 'EliteMain';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.EliteUserProfile]
class EliteUserProfile extends _i7.PageRouteInfo<void> {
  const EliteUserProfile({List<_i7.PageRouteInfo>? children})
      : super(
          EliteUserProfile.name,
          initialChildren: children,
        );

  static const String name = 'EliteUserProfile';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
