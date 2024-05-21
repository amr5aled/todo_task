import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/auth/models/auth_state.dart';
import '../features/auth/providers/auth_state.dart';
import '../features/auth/screens/login.dart';
import '../features/auth/screens/splash.dart';
import '../features/todos/screens/add_todo.dart';
import '../features/todos/screens/todo.dart';
import '../features/todos/screens/todos.dart';
import '../features/todos/screens/update_todo.dart';

part 'router.g.dart';

/// The router config for the app.
@riverpod
GoRouter router(RouterRef ref) {
  // Local notifier for the current auth state. The purpose of this notifier is
  // to provide a [Listenable] to the [GoRouter] exposed by this provider.
  final authStateNotifier = ValueNotifier(AuthState.unknown);
  ref
    ..onDispose(authStateNotifier.dispose)
    ..listen(currentAuthStateProvider, (_, value) {
      authStateNotifier.value = value;
    });

  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (_, __) => const LoginScreen(),
      ),
      // Only add the /todos route if the user is authenticated
      GoRoute(
        path: '/todos',
        builder: (context, state) {
          final authState = ref.read(currentAuthStateProvider);
          if (authState == AuthState.authenticated) {
            return const TodosScreen();
          } else if (authState == AuthState.unauthenticated) {
            return const LoginScreen(); // Redirect to login if not authenticated
          } else {
            return const SplashScreen(); // Show splash screen if auth state is unknown
          }
        },
        routes: [
          GoRoute(
            path: 'add',
            builder: (_, __) => const AddTodoScreen(),
          ),
          GoRoute(
            path: ':id',
            builder: (_, state) {
              final id = state.pathParameters['id']!;
              // You can use the ID to fetch data and render a specific todo screen
              return TodoScreen(int.parse(id));
            },
            routes: [
              GoRoute(
                path: 'update',
                builder: (_, state) {
                  final id = state.pathParameters['id']!;
                  return UpdateTodoScreen(int.parse(id));
                },
              ),
            ],
          ),
        ],
      ),
    ],
    refreshListenable: authStateNotifier,
    redirect: (context, state) {
      // Get the current auth state.
      final authState = ref.read(currentAuthStateProvider);

      final isAuthenticated = authState == AuthState.authenticated;

      if (!isAuthenticated) {
        return '/login';
      }

      if (isAuthenticated) {
        return '/todos';
      }

      return null;
    },
  );

  ref.onDispose(router.dispose);

  return router;
}
