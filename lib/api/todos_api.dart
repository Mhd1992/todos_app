import 'dart:convert';

import '../models/todo_model.dart';
import 'package:http/http.dart' as http;

class TodosApi {

  Future<List<ToDo>> getAllTodos() async {
    try {
      const String url = 'https://jsonplaceholder.typicode.com/todos';
      var response = await http.get(Uri.parse(url));
      List<ToDo> todos = (json.decode(response.body)).map<ToDo>((e) =>
          ToDo.fromJson(e)).toList();
      return todos;
    } catch (e) {
      throw e;
    }
  }

}
