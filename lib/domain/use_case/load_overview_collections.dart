import 'package:dartz/dartz.dart';
import 'package:todo_app/core/use_case.dart';
import 'package:todo_app/domain/entity/todo_collection.dart';
import 'package:todo_app/domain/failure/failures.dart';
import 'package:todo_app/domain/repo/todo_repo.dart';

class LoadOverviewCollections
    implements UseCase<List<TodoCollection>, NoParams> {
  const LoadOverviewCollections({required this.todoRepo});

  final TodoRepo todoRepo;

  @override
  Future<Either<Failure, List<TodoCollection>>> call(NoParams params) async {
    try {
      final loadedCollections = await todoRepo.readTodoCollections();

      return loadedCollections.fold((l) => Left(l), (r) => Right(r));
    } on Exception catch (error) {
      return Left(ServerFailure(stackTrace: error.toString()));
    }
  }
}
