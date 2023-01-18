// ignore_for_file: overridden_fields

import 'package:task_app/todo/domain/entities/todo_model.dart';

extension TodoDto on TodoModel {
  Map toMap() {
    return {
      'userId': userId,
      'id': id,
      'completed': completed,
      'title': title,
    };
  }

  static TodoModel fromMap(Map map) {
    return TodoModel(
        userId: map['userId'],
        id: map['id'],
        completed: map['completed'],
        title: map['title']);
  }
}
