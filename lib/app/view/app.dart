import 'package:elite_one/l10n/l10n.dart';
import 'package:elite_one/src/configs/theme/elite_theme.dart';
import 'package:elite_one/src/router/router.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp.router(
      theme: theme.toThemeData(Brightness.light),
      darkTheme: theme.toThemeData(Brightness.dark),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router.config(),
    );
  }
}
