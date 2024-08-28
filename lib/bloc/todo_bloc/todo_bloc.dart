// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'todo_event.dart';
// part 'todo_state.dart';

// class TodoBloc extends Bloc<TodoEvent, TodoState> {
//   TodoBloc() : super(TodoInitial()) {
//     on<TodoEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_bloc/todo_event.dart';
import 'package:todo/bloc/todo_bloc/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> todoList = [];
  TodoBloc() : super(const TodoState()) {
    on<AddTodoEvent>(_addTodo);
    on<RemoveTodoEvent>(_removeTodo);
  }

  void _addTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    todoList.add(event.task);
    emit(
      state.copyWith(todosList: List.from(todoList)),
    );
  }

  void _removeTodo(RemoveTodoEvent event, Emitter<TodoState> emit) {
    todoList.remove(event.task);
    emit(
      state.copyWith(todosList: List.from(todoList)),
    );
  }
}
