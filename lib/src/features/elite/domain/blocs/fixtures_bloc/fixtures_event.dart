part of 'fixtures_bloc.dart';

@freezed
class FixturesEvent with _$FixturesEvent {
  const factory FixturesEvent.started() = _Started;
  const factory FixturesEvent.getFixtures({
    required DateTime from,
    required DateTime to,
  }) = _GetFixtures;
}
