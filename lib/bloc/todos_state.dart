part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();
}

class LoadingState extends TodosState {
  @override
  List<Object> get props => [];
}

class LoadedState extends TodosState{

  final List<ToDo> todos;
  LoadedState(this.todos);

  @override
  List<Object> get props => [todos];

}

class ErrorState extends TodosState{
  final String message;

  ErrorState(this.message);

  @override
  List<Object> get props => [message];


}
