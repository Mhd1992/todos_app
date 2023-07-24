import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todos_app/models/todo_model.dart';

import '../api/todos_api.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodosApi todosApi;
  TodosBloc({required this.todosApi}) : super(LoadingState()) {
    on<TodosEvent>((event, emit) async {
     if(event is GetAllTodosEvent){
       emit(LoadingState());
       try{
         print("I am inside The loaded state");
         final todos = await todosApi.getAllTodos();
         emit(LoadedState(todos));
       }catch(e){
         print("I am inside The error state");

         emit(ErrorState('Something went wrong please try again'));
       }
     }
    });
  }
}
