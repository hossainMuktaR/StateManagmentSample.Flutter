import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment_sample/bloc_counter/counter_event.dart';
import 'package:state_managment_sample/bloc_counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super(const CounterState()) {

    on<IncrementEvent>((event, emit) {
      emit(CounterState(count: state.count+1));
    });
  }
}
