// part of 'todo_bloc.dart';

// sealed class TodoState extends Equatable {
//   const TodoState();

//   @override
//   List<Object> get props => [];
// }

// final class TodoInitial extends TodoState {}

import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  final List<String> todosList;
  const TodoState({this.todosList = const []});

  TodoState copyWith({List<String>? todosList}) {
    return TodoState(todosList: todosList ?? this.todosList);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [todosList];
}
