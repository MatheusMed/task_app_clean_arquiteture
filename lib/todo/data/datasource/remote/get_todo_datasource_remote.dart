import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/todo/data/datasource/get_todo_datasource.dart';
import 'package:task_app/todo/data/dto/todo_dto.dart';
import 'package:task_app/todo/domain/entities/todo_model.dart';

class GetTodoDatasourceRemote implements IGetTodoDatasource {
  final Dio _dio;

  GetTodoDatasourceRemote(this._dio);
  @override
  Future<Either<Exception, List<TodoModel>>> call() async {
    try {
      var result = await _dio.get('https://jsonplaceholder.typicode.com/todos');

      return Right(
          (result.data as List).map((e) => TodoDto.fromMap(e)).toList());
    } catch (e) {
      return Left(Exception('falha no datasource'));
    }
  }
}
