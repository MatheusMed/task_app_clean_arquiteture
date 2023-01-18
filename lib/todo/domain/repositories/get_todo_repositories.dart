import 'package:dartz/dartz.dart';

import '../entities/todo_model.dart';

abstract class IGetTodoRepository {
  Future<Either<Exception, List<TodoModel>>> call();
}
