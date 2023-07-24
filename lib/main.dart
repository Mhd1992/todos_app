import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_app/api/todos_api.dart';
import 'package:todos_app/pages/todos_page.dart';

import 'bloc/todos_bloc.dart';
import 'cubit/todos01_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Todos01Cubit(todosApi: TodosApi())..GetAllTodosFromApi(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todos App",
        home: Scaffold(body: TodosPage()),
      ),
    );
  }
}
/* via bloc
*     return BlocProvider(
      create: (context) => TodosBloc(todosApi: TodosApi())..add(GetAllTodosEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todos App",
        home: Scaffold(body: TodosPage()),
      ),
    );
* */