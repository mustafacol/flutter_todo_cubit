import 'package:bloc/bloc.dart';
import 'package:todo_cubit/cubits/todo_search/todo_search_state.dart';

class TodoSearchCubit extends Cubit<TodoSearchState> {
  TodoSearchCubit() : super(TodoSearchState.initial());

  void setSearchTerm(String newSearchItem) {
    emit(state.copyWith(searchTerm: newSearchItem));
  }
}
