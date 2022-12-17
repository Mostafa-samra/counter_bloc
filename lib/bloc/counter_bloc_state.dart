part of 'counter_bloc_bloc.dart';

@immutable
abstract class CounterBlocState {}

class CounterBlocInitial extends CounterBlocState {}

class CounterValueChangedState extends CounterBlocState {
  final int counter;

  CounterValueChangedState({required this.counter});
}
