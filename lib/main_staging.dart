import 'package:elite_one/app/view/app.dart';
import 'package:elite_one/bootstrap.dart';
import 'package:elite_one/src/features/auth/domain/cubits/cubit/elite_auth_cubit.dart';
import 'package:elite_one/src/features/elite/domain/cubits/elite_theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  bootstrap(
    () => MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<EliteAuthCubit>(
          create: (context) => EliteAuthCubit(),
        ),
      ],
      child: const EliteOne(),
    ),
  );
}
