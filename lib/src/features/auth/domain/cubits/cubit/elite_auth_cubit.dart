import 'package:elite_one/src/features/auth/data/models/elite_user.dart';
import 'package:elite_one/src/features/auth/data/services/auth_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'elite_auth_state.dart';
part 'elite_auth_cubit.freezed.dart';

class EliteAuthCubit extends HydratedCubit<EliteAuthState> {
  EliteAuthCubit() : super(const EliteAuthState.initial());
  final service = EliteAuthServices();
  Future<void> signUpWithGoogle() async {
    emit(const EliteAuthState.processing());
    try {
      final user = await service.continueWithGoogle();
      emit(EliteAuthState.authenticated(user: user));
    } catch (err) {
      emit(EliteAuthState.failure(failure: err.toString()));
    }
  }

  Future<void> logout() async {
    emit(const EliteAuthState.processing());
    await service.logout();
    emit(const EliteAuthState.initial());
  }

  @override
  EliteAuthState? fromJson(Map<String, dynamic> json) {
    return EliteAuthState.authenticated(
      user: EliteUser.fromMap(json['user'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic>? toJson(EliteAuthState state) {
    return state.maybeMap(
      authenticated: (state) => {
        'user': state.user.toMap(),
      },
      orElse: () => {
        'user': null,
      },
    );
  }
}
