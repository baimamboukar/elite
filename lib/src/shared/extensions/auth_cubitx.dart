import 'package:elite_one/src/features/auth/data/models/elite_user.dart';
import 'package:elite_one/src/features/auth/domain/cubits/cubit/elite_auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension AuthCubitX on BuildContext {
  EliteUser? get user => BlocProvider.of<EliteAuthCubit>(this).state.maybeMap(
        authenticated: (state) => state.user,
        orElse: () => null,
      );
  EliteAuthState get authState => BlocProvider.of<EliteAuthCubit>(this).state;

  bool get isUserLoggedIn =>
      BlocProvider.of<EliteAuthCubit>(this).state.maybeMap(
            authenticated: (state) => true,
            orElse: () => false,
          );
}
