import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/cubits/filtered_todos/filtered_todos_cubit.dart';
import 'package:todo_cubit/cubits/todo_list/todo_list_cubit.dart';

class ShowTodos extends StatelessWidget {
  const ShowTodos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<TodoListCubit>().state.todos;

    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      separatorBuilder: (BuildContext buildContext, int index) {
        return Divider(color: Colors.grey);
      },
      itemCount: todos.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(
          todos[index].desc,
          style: TextStyle(fontSize: 20.0),
        );
      },
    );
  }
}
