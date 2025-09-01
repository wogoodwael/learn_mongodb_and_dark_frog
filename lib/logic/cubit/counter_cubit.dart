import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_cubit/logic/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 0));
  void updateCounter() {
    emit(state.copyWith(counter: state.counter+1));
    print(state.counter);
  }
}
