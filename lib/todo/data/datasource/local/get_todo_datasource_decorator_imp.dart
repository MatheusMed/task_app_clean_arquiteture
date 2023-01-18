// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:task_app/todo/data/datasource/get_todo_datasource.dart';
// import 'package:task_app/todo/data/datasource/local/get_todo_datasource_decorator.dart';
// import 'package:task_app/todo/data/dto/todo_dto.dart';

// import '../../../domain/entities/todo_model.dart';

// class GetTodoDatasourceDecoratorImp extends GetTodoDatasourceDecorator {
//   GetTodoDatasourceDecoratorImp(IGetTodoDatasource getTodoDatasource)
//       : super(getTodoDatasource);

//   @override
//   Future<Either<Exception, List<TodoModel>>> call() async {
//     return (await super()).fold((error) async => Right(await _getInCache()),
//         (result) {
//       _saveInCache(result);
//       return Right(result);
//     });
//   }

//   _saveInCache(List<TodoModel> todoModel) async {
//     var prefs = await SharedPreferences.getInstance();
//     String jsonTodo = jsonEncode(todoModel.first.toMap());
//     prefs.setString('moviesCache', jsonTodo);
//     print('salvou no cache');
//   }

//   _getInCache() async {
//     var prefs = await SharedPreferences.getInstance();
//     var todoJsonString = prefs.getString('moviesCache')!;
//     var json = jsonDecode(todoJsonString);
//     var todo = TodoDto.fromMap(json);
//     print('recuperou o cahce do todo');
//     return todo;
//   }
// }
