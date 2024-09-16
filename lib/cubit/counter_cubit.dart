import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());
  int teamAPounts = 0;
  int teamBPounts = 0;

  void teamIncrement({required String team, required int points}) {
    if (team == 'A') {
      teamAPounts += points;
      emit(CounterAIncrementState());
    } else {
      teamBPounts += points;
      emit(CounterBIncrementState());
    }
  }

  void reset() {
    teamAPounts = 0;
    teamBPounts = 0;
  }
}
