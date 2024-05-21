import 'package:task/features/todos/models/todo.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test todo-related methods in ApiClient', () {
    test('fetchTodos() should return a non-empty list', () async {
      final client = createMockedApiClient();

      await expectLater(
        client.fetchTodos(),
        completion(isNotEmpty),
      );
    });

    test('fetchTodo(id) should return the related todo', () async {
      final client = createMockedApiClient();

      const id = 24;
      await expectLater(
        client.fetchTodo(id),
        completion(
          isA<Todo>().having((item) => item.id, 'id', equals(id)),
        ),
      );
    });

    test('addTodo(id) should add the todo to the list of todos', () async {
      final client = createMockedApiClient();

      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      final Todo(:id) = await client.addTodo(todo);
      await expectLater(
        client.fetchTodo(id),
        completion(equals(todo.copyWith(id: id))),
      );
    });

    test('updateTodo(id) should update the related todo with the new value', () async {
      final client = createMockedApiClient();

      const id = 24;
      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      await client.updateTodo(todo);
      await expectLater(
        client.fetchTodo(id),
        completion(equals(todo.copyWith(id: id))),
      );
    });

    test('deleteTodo(id) should delete an existing todo from the list of todos', () async {
      final client = createMockedApiClient();

      const id = 24;
      await expectLater(
        client.fetchTodos(),
        completion(
          contains(
            isA<Todo>().having((item) => item.id, 'id', equals(id)),
          ),
        ),
      );
      await client.deleteTodo(id);
      await expectLater(
        client.fetchTodos(),
        completion(
          isNot(contains(
            isA<Todo>().having((item) => item.id, 'id', equals(id)),
          )),
        ),
      );
    });
  });
}
