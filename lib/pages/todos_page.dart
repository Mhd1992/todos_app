import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_app/bloc/todos_bloc.dart';
import 'package:todos_app/widgets/loading_widget.dart';
import '../bloc/todos_bloc.dart';
import '../widgets/error_widget.dart';
import '../widgets/todos_widget.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todos'),centerTitle: true,),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state is LoadedState) {
            return TodosWidget(todos: state.todos);
          } else if (state is ErrorState) {
            return MyErrorWidget(
              message: state.message,
            );
          } else {
            return LoadingWidget();
          }
        },
      ),
    );
  }
}

/* via bloc
    return Scaffold(
      appBar: AppBar(title: Text('Todos'),centerTitle: true,),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state is LoadedState) {
            return TodosWidget(todos: state.todos);
          } else if (state is ErrorState) {
            return MyErrorWidget(
              message: state.message,
            );
          } else {
            return LoadingWidget();
          }
        },
      ),
    );
* */