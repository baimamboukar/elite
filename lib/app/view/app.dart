import 'package:elite_one/l10n/l10n.dart';
import 'package:elite_one/src/configs/theme/elite_theme.dart';
import 'package:elite_one/src/features/auth/domain/cubits/cubit/elite_auth_cubit.dart';
import 'package:elite_one/src/features/elite/domain/blocs/standings_bloc/standings_bloc.dart';
import 'package:elite_one/src/features/elite/domain/cubits/elite_theme_cubit.dart';
import 'package:elite_one/src/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EliteOne extends StatefulWidget {
  const EliteOne({super.key});

  @override
  State<EliteOne> createState() => _EliteOneState();
}

class _EliteOneState extends State<EliteOne> {
  late EliteRouter _router;
  final theme = const EliteTheme();
  @override
  void initState() {
    _router = EliteRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<EliteAuthCubit>(
          create: (context) => EliteAuthCubit(),
        ),
        BlocProvider<StandingsBloc>(
          create: (context) => StandingsBloc()
            ..add(
              const StandingsEvent.getStandings(),
            ),
        ),
      ],
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (BuildContext context, bool isDarkMode) {
          return MaterialApp.router(
            theme: theme.toThemeData(Brightness.light),
            darkTheme: theme.toThemeData(Brightness.dark),
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: _router.config(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
