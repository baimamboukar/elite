import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/features/elite/domain/cubits/elite_theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class EliteUserProfile extends StatelessWidget {
  const EliteUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
        child: Column(
          children: [
            BlocBuilder<ThemeCubit, bool>(
              builder: (context, state) {
                return ListTile(
                  leading: const Icon(Icons.light_mode),
                  title: const Text('Dark mode'),
                  trailing: Switch(
                    value: state,
                    onChanged: (data) {
                      state
                          ? context.read<ThemeCubit>().reset()
                          : context.read<ThemeCubit>().toggle();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
