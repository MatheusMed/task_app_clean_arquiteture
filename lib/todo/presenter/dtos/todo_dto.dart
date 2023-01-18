import 'package:task_app/todo/domain/entities/todo_model.dart';

extension TodoDto on TodoModel {
  TodoModel copyWith() {
    return TodoModel(
      userId: userId,
      id: id,
      title: title,
      completed: completed,
    );
  }
}
