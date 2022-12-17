import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  int counter = 0;
  CounterBlocBloc() : super(CounterBlocInitial()) {
    on<CounterBlocEvent>((event, emit) {
      if (event is IncreamentEvent) {
        counter++;
        emit(CounterValueChangedState(counter: counter));
      } else if (event is DecreamntEvent) {
        counter--;
        emit(CounterValueChangedState(counter: counter));
      } else {
        counter = 0;
        emit(CounterValueChangedState(counter: counter));
      }
    });
  }
}
