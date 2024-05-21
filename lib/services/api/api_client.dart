import 'package:dio/dio.dart';

import '../../features/auth/models/login.dart';
import '../../features/todos/models/todo.dart';

typedef ApiClientException = DioException;
typedef ApiClientResponse<T> = Response<T>;
typedef ApiClientRequestOptions = RequestOptions;
typedef _ResponseData = Map<String, Object?>;

extension ApiClientExceptionX on ApiClientException {
  String? get responseMessage => response?.data?['message'] as String?;
}

/// An API client that makes network requests.
///
/// This class is meant to be seen as a representation of the common API contract
/// or API list (such as Swagger or Postman) given by the backend.
///
/// This class does not maintain authentication state, but rather receive the token
/// from external source.
///
/// When a widget or provider wants to make a network request, it should not
/// instantiate this class, but instead call the provider that exposes an object
/// of this type.
class ApiClient {
  static final BaseOptions _defaultOptions = BaseOptions(
    baseUrl: 'https://dummyjson.com',
  );

  final Dio _httpClient;

  /// Creates an [ApiClient] with default options.
  ApiClient() : _httpClient = Dio(_defaultOptions);

  /// Creates an [ApiClient] with [token] set for authorization.
  ApiClient.withToken(String token)
      : _httpClient = Dio(
          _defaultOptions.copyWith()..headers['Authorization'] = 'Bearer $token',
        );

  @override
  String toString() {
    return "ApiClient(_httpClient.options.headers['Authorization']: ${_httpClient.options.headers['Authorization']})";
  }

  Future<String> login(Login data) async {
    final response = await _httpClient.post(
      '/auth/login',
      data: data.toJson(),
    );

    final token = response.data['token'] as String;

    return (token);
  }

  Future<List<Todo>> fetchTodos() async {
    final response = await _httpClient.get('/todos');

    return (response.data['todos'] as List).cast<_ResponseData>().map(Todo.fromJson).toList();
  }

  Future<Todo> fetchTodo(int id) async {
    final response = await _httpClient.get('/todos/$id');

    return Todo.fromJson(response.data as _ResponseData);
  }

  Future<Todo> addTodo(Todo todo) async {
    final response = await _httpClient.post(
      '/todos/add',
      data: todo.toJson()..remove('id'),
    );

    return Todo.fromJson(response.data as _ResponseData);
  }

  Future<Todo> updateTodo(Todo todo) async {
    final response = await _httpClient.put(
      '/todos/${todo.id}',
      data: todo.toJson()..remove('id'),
    );

    return Todo.fromJson(response.data as _ResponseData);
  }

  Future<Todo> deleteTodo(int id) async {
    final response = await _httpClient.delete('/todos/$id');

    return Todo.fromJson(response.data as _ResponseData);
  }
}
