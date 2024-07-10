import 'package:dartz/dartz.dart';

import '../../data/models/models.dart';

abstract interface class UserRepositoryInterface {
  Future<Either<FailureResponse, List<User>>> getUsers({
    required String page,
    required String results,
  });
}
