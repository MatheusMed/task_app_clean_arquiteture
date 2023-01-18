import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_app/todo/data/datasource/remote/get_todo_datasource_remote.dart';

import 'package:task_app/todo/presenter/controllers/todo_controller.dart';

import '../../data/repositories/get_todo_repository.dart';
import '../../domain/usecases/get_todo_usecases.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = TodoController(
        GetTodoImp(GetTodoRepository(GetTodoDatasourceRemote(Dio()))));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: ValueListenableBuilder(
        valueListenable: controller.listTodo,
        builder: (context, lista, child) {
          return ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              final todo = lista[index];
              return ListTile(
                title: Text(todo.title),
              );
            },
          );
        },
      ),
    );
  }
}
