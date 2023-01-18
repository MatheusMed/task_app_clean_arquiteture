import 'package:dartz/dartz.dart';
import 'package:task_app/todo/domain/entities/todo_model.dart';
import 'package:task_app/todo/domain/repositories/get_todo_repositories.dart';

abstract class IGetTodo {
  Future<Either<Exception, List<TodoModel>>> call();
}

class GetTodoImp implements IGetTodo {
  final IGetTodoRepository _getTodoRepository;

  GetTodoImp(this._getTodoRepository);
  @override
  Future<Either<Exception, List<TodoModel>>> call() async {
    return await _getTodoRepository();
  }
}
