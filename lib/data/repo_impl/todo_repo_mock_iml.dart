import 'package:dartz/dartz.dart';
import 'package:todo_app/domain/entity/collection_id.dart';
import 'package:todo_app/domain/entity/todo_collection.dart';
import 'package:todo_app/domain/entity/todo_color.dart';
import 'package:todo_app/domain/failure/failures.dart';
import 'package:todo_app/domain/repo/todo_repo.dart';

class TodoRepoMockIml implements TodoRepo {
  @override
  Future<Either<Failure, List<TodoCollection>>> readTodoCollections() {
    final list = List<TodoCollection>.generate(
      10,
      (index) => TodoCollection(
        id: CollectionId(),
        title: 'Title $index',
        color: TodoColor(colorIndex: index % TodoColor.predefinedColors.length),
      ),
    );

    return Future.delayed(
      Duration(milliseconds: 200),
      () => Right(list),
    );
  }
}
