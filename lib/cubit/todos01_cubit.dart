import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../api/todos_api.dart';
import '../models/todo_model.dart';

part 'todos01_state.dart';

class Todos01Cubit extends Cubit<Todos01State> {
  final TodosApi todosApi;
  Todos01Cubit({required this.todosApi}) : super(LoadingState());
  void GetAllTodosFromApi() async{
    emit(LoadingState());
    try{
      final todos = await todosApi.getAllTodos();
      emit(LoadedState(todos));
    }catch(e){
      emit(ErrorState('Something went wrong please try again'));
    }
  }

}
