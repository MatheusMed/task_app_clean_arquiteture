import 'package:dartz/dartz.dart';

import '../../domain/entities/todo_model.dart';

abstract class IGetTodoDatasource {
  Future<Either<Exception, List<TodoModel>>> call();
}
