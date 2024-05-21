import '../../../features/auth/models/login.dart';
import '../../../features/todos/models/todo.dart';
import '../api_client.dart';

part 'mocked_api_client_repository.dart';

class MockedApiClient implements ApiClient {
  final Duration _delay;

  final List<Todo> _todos = _MockedApiClientRepository.getTodos();

  final List<Map<String, Object?>> _usersRaw = _MockedApiClientRepository.getUsersRaw();

  MockedApiClient({Duration? delay}) : _delay = delay ?? const Duration(milliseconds: 500);
  @override
  Future<String> login(Login data) async {
    await Future.delayed(_delay);
    try {
      final profileRaw = _usersRaw.singleWhere(
          (user) => user['username'] == data.username && user['password'] == data.password);

      return ("");
    } on StateError {
      final requestOptions = ApiClientRequestOptions();
      throw ApiClientException(
        requestOptions: requestOptions,
        response: ApiClientResponse(
          requestOptions: requestOptions,
          data: {'message': 'Invalid credentials'},
        ),
      );
    }
  }

  @override
  Future<List<Todo>> fetchTodos() async {
    await Future.delayed(_delay);
    return _todos;
  }

  @override
  Future<Todo> fetchTodo(int id) async {
    await Future.delayed(_delay);
    return _todos.singleWhere((todo) => todo.id == id);
  }

  @override
  Future<Todo> addTodo(Todo todo) async {
    await Future.delayed(_delay);
    final id = (_todos.lastOrNull?.id ?? 0) + 1;
    final addedTodo = todo.copyWith(id: id);
    _todos.add(addedTodo);
    return addedTodo;
  }

  @override
  Future<Todo> updateTodo(Todo todo) async {
    await Future.delayed(_delay);
    final index = _todos.indexWhere((todo) => todo.id == todo.id);
    final updatedTodo = todo.copyWith(id: todo.id);
    _todos[index] = updatedTodo;
    return updatedTodo;
  }

  @override
  Future<Todo> deleteTodo(int id) async {
    await Future.delayed(_delay);
    final todo = _todos.singleWhere((todo) => todo.id == id);
    _todos.remove(todo);
    return todo;
  }
}

extension on String {
  /// Checks if this contains [query], case-insensitively.
  bool find(String query) => toLowerCase().contains(query.toLowerCase());
}
