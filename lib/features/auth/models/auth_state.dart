/// The possible authentication states of the app.
enum AuthState {
  unknown(
    redirectPath: '/',
    allowedPaths: ['/'],
  ),
  unauthenticated(
    redirectPath: '/login',
    allowedPaths: ['/login'],
  ),
  authenticated(
    redirectPath: '/todos',
    allowedPaths: [
      '/todos',
      '/todos/add',
      '/todos/:id',
      '/todos/:id/update',
    ],
  );

  const AuthState({
    required this.redirectPath,
    required this.allowedPaths,
  });

  /// The target path to redirect when the current route is not allowed in this
  /// auth state.
  final String redirectPath;

  /// List of paths allowed when the app is in this auth state.
  final List<String> allowedPaths;
}
