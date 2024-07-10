import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:random_user_test_app/feauters/users/domain/repository/user_repository_interface.dart';

import '../../../../api/api.dart';
import '../models/models.dart';

class UserRepositoryImpl implements UserRepositoryInterface {
  UserRepositoryImpl({required this.apiClient});

  final ApiClient apiClient;

  @override
  Future<Either<FailureResponse, List<User>>> getUsers({
    required String page,
    required String results,
  }) async {
    try {
      final response = await apiClient.fetchUsers(
        page,
        results,
      );
      return Right(response.results);
    } on DioException catch (e) {
      return Left(FailureResponse.fromJson(e.response?.data));
    }
  }
}
