import 'package:auto_route/auto_route.dart';
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/auth/domain/cubits/cubit/elite_auth_cubit.dart';
import 'package:elite_one/src/features/elite/domain/cubits/elite_theme_cubit.dart';
import 'package:elite_one/src/router/router.gr.dart' as routes;
import 'package:elite_one/src/shared/extensions/auth_cubitx.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class EliteUserProfile extends StatelessWidget {
  const EliteUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: Column(
          children: [
            34.vGap,
            Column(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(
                    '${context.user!.imageURL}',
                  ),
                ),
                4.hGap,
                Text(
                  context.user!.name,
                ),
              ],
            ),
            const Divider(),
            14.vGap,
            ListTile(
              leading: Image.asset(
                Assets.assetsImagesFootball,
                height: 24,
                width: 24,
              ),
              title: Text(
                'Match Reminders',
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w800,
                  color: context.colorScheme.primary,
                ),
              ),
              onTap: () {
                context.read<EliteAuthCubit>().logout();
                context.router.popUntilRoot();
              },
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (data) {},
              ),
            ),
            ListTile(
              leading: const Icon(Icons.notification_add),
              title: Text(
                'Receive notifications',
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w800,
                  color: context.colorScheme.primary,
                ),
              ),
              onTap: () {
                context.read<EliteAuthCubit>().logout();
                context.router.popUntilRoot();
              },
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (data) {},
              ),
            ),
            BlocBuilder<ThemeCubit, bool>(
              builder: (context, state) {
                return ListTile(
                  leading: const Icon(Icons.light_mode),
                  title: Text(
                    'Dark mode',
                    style: context.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w800,
                      color: context.colorScheme.primary,
                    ),
                  ),
                  trailing: CupertinoSwitch(
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
            const Divider(),
            const Spacer(),
            ListTile(
              //  tileColor: context.colorScheme.errorContainer,
              leading: const Icon(Icons.logout),
              title: Text(
                'Logout',
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w800,
                  color: context.colorScheme.error,
                ),
              ),
              onTap: () {
                context.read<EliteAuthCubit>().logout();
                context.router.pushAndPopUntil(
                  const routes.EliteWelcome(),
                  predicate: (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
