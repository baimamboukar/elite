import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'elite_one_state.dart';

class EliteOneCubit extends Cubit<EliteOneState> {
  EliteOneCubit() : super(EliteOneInitial());
}
