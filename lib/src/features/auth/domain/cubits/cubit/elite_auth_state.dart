part of 'elite_auth_cubit.dart';

@freezed
class EliteAuthState with _$EliteAuthState {
  const factory EliteAuthState.initial() = _Initial;
  const factory EliteAuthState.processing() = _Processing;
  const factory EliteAuthState.authenticated({required EliteUser user}) =
      _Authenticated;
  const factory EliteAuthState.failure({required String failure}) = _Failure;
}
