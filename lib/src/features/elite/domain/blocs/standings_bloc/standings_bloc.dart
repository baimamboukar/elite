import 'package:bloc/bloc.dart';
import 'package:elite_one/src/features/elite/data/models/league_standing.dart';
import 'package:elite_one/src/features/elite/data/services/api/standings_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings_event.dart';
part 'standings_state.dart';
part 'standings_bloc.freezed.dart';

class StandingsBloc extends Bloc<StandingsEvent, StandingsState> {
  StandingsBloc() : super(const _Initial()) {
    on<StandingsEvent>((event, emit) async {
      await event.map(
        started: (event) {},
        getStandings: (event) async {
          emit(const StandingsState.loading());
          try {
            final standings = await StandingsService.getStandings();
            emit(StandingsState.loaded(standings: standings));
          } catch (e) {
            emit(StandingsState.failed(message: e.toString()));
          }
        },
      );
    });
  }
}

Future<void> _getStandings(
  _GetStandings event,
  Emitter<StandingsState> emit,
) async {
  emit(const StandingsState.loading());
  try {
    final standings = await StandingsService.getStandings();
    emit(StandingsState.loaded(standings: standings));
  } catch (e) {
    emit(StandingsState.failed(message: e.toString()));
  }
}
