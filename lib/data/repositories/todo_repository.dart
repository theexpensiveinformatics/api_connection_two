import 'package:api_connection_two/config/api_connection.dart';
import 'package:api_connection_two/data/models/todo_response_model.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  Api api = Api();

  Future<List<TodoModel>> fetchTodos() async {
    try { 
      Response response = await api.getdio.get('/todos');
      List<dynamic> todoList = response.data;
      return todoList.map((todoItem) => TodoModel.fromJson(todoItem)).toList();
    } catch (e) {
      throw e;
    }
  }
}
