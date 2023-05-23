part of 'fixtures_bloc.dart';

@freezed
class FixturesState with _$FixturesState {
  const factory FixturesState.initial() = _Initial;
  const factory FixturesState.loading() = _Loading;
  const factory FixturesState.loaded(List<Fixture> fixtures) = _Loaded;
  const factory FixturesState.failed({required String message}) = _Failed;
}
