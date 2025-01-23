import 'package:dartz/dartz.dart';
import 'package:todo_app/domain/entity/todo_collection.dart';
import 'package:todo_app/domain/failure/failures.dart';

abstract class TodoRepo {
  Future<Either<Failure, List<TodoCollection>>> readTodoCollections();
}
