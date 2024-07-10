import 'package:dartz/dartz.dart';
import 'package:random_user_test_app/feauters/users/data/models/models.dart';
import 'package:random_user_test_app/feauters/users/domain/repository/user_repository_interface.dart';

class GetUsers {
  final UserRepositoryInterface _repository;

  GetUsers(this._repository);

  Future<Either<FailureResponse, List<User>>> call({
    required String page,
    required String results,
  }) {
    return _repository.getUsers(
      page: page,
      results: results,
    );
  }
}
