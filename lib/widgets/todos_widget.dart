import 'package:flutter/material.dart';

import '../models/todo_model.dart';

class TodosWidget extends StatelessWidget {
  final List<ToDo> todos;

  const TodosWidget({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(todos[index].id.toString()),
              ),
              trailing: todos[index].completed?Icon(Icons.done,color: Colors.green,):null,
              title: Text(todos[index].title),
            ),
          );
        });
  }
}
