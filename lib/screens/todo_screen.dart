import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_bloc/todo_bloc.dart';
import 'package:todo/bloc/todo_bloc/todo_state.dart';

import '../bloc/todo_bloc/todo_event.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i <= 20; i++) {
            context.read<TodoBloc>().add(AddTodoEvent(task: "Task$i"));
          }
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(builder: (_, state) {
        if (state.todosList.isEmpty) {
          return const Center(
            child: Text("No data found"),
          );
        } else if (state.todosList.isNotEmpty) {
          return ListView.builder(
              itemCount: state.todosList.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(
                    state.todosList[index].toString(),
                  ),
                  trailing: InkWell(
                      onTap: () {
                        context.read<TodoBloc>().add(RemoveTodoEvent(
                            task: state.todosList[index].toString()));
                      },
                      child: const Icon(Icons.delete)),
                );
              });
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
