// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:elite_one/src/features/elite/presentation/screens/elite_infos.dart'
    as _i2;
import 'package:elite_one/src/features/elite/presentation/screens/elite_main.dart'
    as _i6;
import 'package:elite_one/src/features/elite/presentation/screens/elite_root.dart'
    as _i3;
import 'package:elite_one/src/features/elite/presentation/screens/elite_store.dart'
    as _i4;
import 'package:elite_one/src/features/elite/presentation/screens/elite_user_profile.dart'
    as _i7;
import 'package:elite_one/src/features/elite/presentation/screens/fixture_details.dart'
    as _i8;
import 'package:elite_one/src/features/elite/presentation/screens/player_details.dart'
    as _i5;
import 'package:elite_one/src/features/onboarding/presentation/screens/welcome.dart'
    as _i1;
import 'package:flutter/material.dart' as _i10;

abstract class $EliteRouter extends _i9.RootStackRouter {
  $EliteRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    EliteWelcome.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EliteWelcome(),
      );
    },
    EliteInfos.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EliteInfos(),
      );
    },
    EliteRoot.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EliteRoot(),
      );
    },
    EliteStore.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EliteStore(),
      );
    },
    PlayerDetails.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PlayerDetailsArgs>(
          orElse: () =>
              PlayerDetailsArgs(playerID: pathParams.getString('playerID')));
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PlayerDetails(
          playerID: args.playerID,
          key: args.key,
        ),
      );
    },
    EliteMain.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.EliteMain(),
      );
    },
    EliteUserProfile.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EliteUserProfile(),
      );
    },
    FixtureDetails.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.FixtureDetails(),
      );
    },
  };
}

/// generated route for
/// [_i1.EliteWelcome]
class EliteWelcome extends _i9.PageRouteInfo<void> {
  const EliteWelcome({List<_i9.PageRouteInfo>? children})
      : super(
          EliteWelcome.name,
          initialChildren: children,
        );

  static const String name = 'EliteWelcome';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EliteInfos]
class EliteInfos extends _i9.PageRouteInfo<void> {
  const EliteInfos({List<_i9.PageRouteInfo>? children})
      : super(
          EliteInfos.name,
          initialChildren: children,
        );

  static const String name = 'EliteInfos';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EliteRoot]
class EliteRoot extends _i9.PageRouteInfo<void> {
  const EliteRoot({List<_i9.PageRouteInfo>? children})
      : super(
          EliteRoot.name,
          initialChildren: children,
        );

  static const String name = 'EliteRoot';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EliteStore]
class EliteStore extends _i9.PageRouteInfo<void> {
  const EliteStore({List<_i9.PageRouteInfo>? children})
      : super(
          EliteStore.name,
          initialChildren: children,
        );

  static const String name = 'EliteStore';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PlayerDetails]
class PlayerDetails extends _i9.PageRouteInfo<PlayerDetailsArgs> {
  PlayerDetails({
    required String playerID,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PlayerDetails.name,
          args: PlayerDetailsArgs(
            playerID: playerID,
            key: key,
          ),
          rawPathParams: {'playerID': playerID},
          initialChildren: children,
        );

  static const String name = 'PlayerDetails';

  static const _i9.PageInfo<PlayerDetailsArgs> page =
      _i9.PageInfo<PlayerDetailsArgs>(name);
}

class PlayerDetailsArgs {
  const PlayerDetailsArgs({
    required this.playerID,
    this.key,
  });

  final String playerID;

  final _i10.Key? key;

  @override
  String toString() {
    return 'PlayerDetailsArgs{playerID: $playerID, key: $key}';
  }
}

/// generated route for
/// [_i6.EliteMain]
class EliteMain extends _i9.PageRouteInfo<void> {
  const EliteMain({List<_i9.PageRouteInfo>? children})
      : super(
          EliteMain.name,
          initialChildren: children,
        );

  static const String name = 'EliteMain';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EliteUserProfile]
class EliteUserProfile extends _i9.PageRouteInfo<void> {
  const EliteUserProfile({List<_i9.PageRouteInfo>? children})
      : super(
          EliteUserProfile.name,
          initialChildren: children,
        );

  static const String name = 'EliteUserProfile';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.FixtureDetails]
class FixtureDetails extends _i9.PageRouteInfo<void> {
  const FixtureDetails({List<_i9.PageRouteInfo>? children})
      : super(
          FixtureDetails.name,
          initialChildren: children,
        );

  static const String name = 'FixtureDetails';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
