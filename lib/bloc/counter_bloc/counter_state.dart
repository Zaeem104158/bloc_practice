// part of 'counter_bloc.dart';

// sealed class CounterState extends Equatable {
//   const CounterState();

//   @override
//   List<Object> get props => [];
// }

// final class CounterInitial extends CounterState {}

import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState({this.counter = 0});

  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }

  @override
  List<Object?> get props => [counter];
}
