import 'package:bloc/bloc.dart';
import 'package:elite_one/src/features/elite/data/models/fixture.dart';
import 'package:elite_one/src/features/elite/data/services/api/standings_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixtures_event.dart';
part 'fixtures_state.dart';
part 'fixtures_bloc.freezed.dart';

class FixturesBloc extends Bloc<FixturesEvent, FixturesState> {
  FixturesBloc() : super(const _Initial()) {
    on<FixturesEvent>(
      (event, emit) async {
        event.map(
          started: (event) {},
          getFixtures: (event) => _getFixtures,
        );
      },
    );
  }

  Future<void> _getFixtures(
    _GetFixtures event,
    Emitter<FixturesState> emit,
  ) async {
    emit(const FixturesState.loading());
    try {
      final fixtures = await StandingsService.getFixtures(
        from: event.from,
        to: event.to,
      );
      emit(FixturesState.loaded(fixtures));
    } catch (err) {
      emit(FixturesState.failed(message: err.toString()));
    }
  }
}
