part of 'standings_bloc.dart';

@freezed
class StandingsState with _$StandingsState {
  const factory StandingsState.initial() = _Initial;
  const factory StandingsState.loading() = _Loading;
  const factory StandingsState.loaded({
    required List<Standing> standings,
  }) = _Loaded;
  const factory StandingsState.failed({
    required String message,
  }) = _Failed;
}
