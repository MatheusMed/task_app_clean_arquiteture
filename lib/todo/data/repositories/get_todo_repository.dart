import 'package:task_app/todo/data/datasource/get_todo_datasource.dart';
import 'package:task_app/todo/domain/entities/todo_model.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/get_todo_repositories.dart';

class GetTodoRepository implements IGetTodoRepository {
  final IGetTodoDatasource _getTodoDatasource;

  GetTodoRepository(this._getTodoDatasource);
  @override
  Future<Either<Exception, List<TodoModel>>> call() async {
    return await _getTodoDatasource();
  }
}
