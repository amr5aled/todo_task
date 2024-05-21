# task

An example Flutter project that uses [Riverpod], [go_router], [Hive], [flutter_hooks], and [Freezed].
 


## ⚠ Important Notes
This project uses [DummyJSON] API. Please note that DummyJSON **doesn't apply your changes** when creating, updating, or deleting items. This project correctly implements those actions, but expect no data changes due to these API limitations.



## Features
Each feature demonstrates certain functionalities that are commonly used in a CRUD app.

1. [Todos](https://github.com/dhafinrayhan/dummymart/tree/master/lib/features/todos): Full CRUD operations, including **"add item"**, **"edit item"**, and **"delete item"**.

2. [Auth](https://github.com/dhafinrayhan/dummymart/tree/master/lib/features/auth): Managing auth states, allowing functionalities such as **"invalidate all data when logging out"** and **"redirect screens based on the auth state"**.

## Routes
```
Full paths for routes:
  => /
  => /login 
  => /todos
  =>   /todos/add
  =>   /todos/:id
  =>     /todos/:id/update
 
  
```

## Setup
1. Run `flutter pub get` to get dependencies.
2. Run `dart run build_runner build` to generate required files. You can also run `dart run build_runner watch` to generate files and let [build_runner] watch for changes and rebuild if necessary.


## Credentials
Use these credentials to login:

```
username: kminchelle
password: 0lelplR
```
```
username: kmeus4
password: aUTdmmmbH
```
```
username: umcgourty9
password: i0xzpX
```

Or you can use any user credentials from here: https://dummyjson.com/users




  [riverpod]: https://pub.dev/packages/riverpod
  [flutter_hooks]: https://pub.dev/packages/flutter_hooks
  [freezed]: https://pub.dev/packages/freezed
  [hive]: https://pub.dev/packages/hive
  [go_router]: https://pub.dev/packages/go_router
  [build_runner]: https://pub.dev/packages/build_runner
  [DummyJSON]: https://dummyjson.com/

  [View all todos]: https://github.com/dhafinrayhan/dummymart/assets/49405411/bc4a0202-ec44-4f7c-a26a-3d88f55a4f7a
  [View a single todo]: https://github.com/dhafinrayhan/dummymart/assets/49405411/7611f63a-efd7-4a58-a831-8a1eb360ad8a
  [Add todo]: https://github.com/dhafinrayhan/dummymart/assets/49405411/d412a52a-530d-4624-be7a-fc0be06cd2ab
  [Update todo]: https://github.com/dhafinrayhan/dummymart/assets/49405411/3a386227-9ed4-4c9b-9223-bd4f98194576

  [Login]: https://github.com/dhafinrayhan/dummymart/assets/49405411/c1f0a23d-0643-449e-abf3-3c1b1a330e83
 

# todo_task
