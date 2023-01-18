import 'package:flutter/cupertino.dart';
import 'package:task_app/todo/domain/entities/todo_model.dart';

import '../../domain/usecases/get_todo_usecases.dart';

class TodoController {
  final GetTodoImp _getTodoImp;

  TodoController(this._getTodoImp) {
    fetch();
  }

  final listTodo = ValueNotifier(<TodoModel>[]);

  // List<TodoModel>? cachedTodo;

  onChanged() {}

  fetch() async {
    var result = await _getTodoImp();

    result.fold(
      (error) => debugPrint(error.toString()),
      (sucess) => listTodo.value = sucess,
    );

    // cachedTodo = listTodo.value;
  }
}
