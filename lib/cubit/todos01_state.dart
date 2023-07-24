part of 'todos01_cubit.dart';

abstract class Todos01State extends Equatable {
  const Todos01State();
}

class LoadingState extends Todos01State {
  @override
  List<Object> get props => [];
}


class LoadedState extends Todos01State{

  final List<ToDo> todos;
  LoadedState(this.todos);

  @override
  List<Object> get props => [todos];

}

class ErrorState extends Todos01State{
  final String message;

  ErrorState(this.message);

  @override
  List<Object> get props => [message];


}
