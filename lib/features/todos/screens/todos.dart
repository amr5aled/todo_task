import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:task/features/todos/screens/add_todo.dart';
import 'package:task/features/todos/screens/todo.dart';

import '../models/todo.dart';
import '../providers/todos.dart';

/// A screen showing all todos in a list view, with a floating action button to
/// add a new todo item.
class TodosScreen extends ConsumerWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(todosProvider.future),
        child: todos.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (_, __) => const Center(child: Text('An error occurred')),
          data: (todos) => ListView.builder(
            itemCount: todos.length,
            itemBuilder: (_, index) => _TodoListTile(todos[index]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // context.go('/add'),
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (_) => const AddTodoScreen())),
        tooltip: 'Add todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _TodoListTile extends StatelessWidget {
  const _TodoListTile(this.todo);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //context.go('/todos/${todo.id}'),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => TodoScreen(todo.id))),
      title: Text(
        todo.todo,
        style: TextStyle(
          decoration: todo.completed ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
