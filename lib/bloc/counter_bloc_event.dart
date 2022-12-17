part of 'counter_bloc_bloc.dart';

@immutable
abstract class CounterBlocEvent {}

class IncreamentEvent extends CounterBlocEvent {}

class DecreamntEvent extends CounterBlocEvent {}

class ResetEvent extends CounterBlocEvent {}
