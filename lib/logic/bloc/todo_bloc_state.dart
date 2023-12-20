part of 'todo_bloc_bloc.dart';

@immutable
sealed class TodoBlocState {}

final class TodoInitialState extends TodoBlocState {}

final class TodoLoadingState extends TodoBlocState {}

final class TodoSuccessState extends TodoBlocState {
  final List<TodoModel> todoList;
  TodoSuccessState({required this.todoList});
}

final class TodoFailuerState extends TodoBlocState {
  final String msg;
  TodoFailuerState({required this.msg});
}
