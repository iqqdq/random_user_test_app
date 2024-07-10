import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../feauters/users/data/models/responses/responses.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://randomuser.me/api/?')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  factory ApiClient.create({String? apiUrl}) {
    final dio = Dio();

    if (apiUrl != null) return ApiClient(dio, baseUrl: apiUrl);

    return ApiClient(dio);
  }

  @GET('page={page}&results={results}')
  Future<UserResponse> fetchUsers(
    @Path('page') String page,
    @Path('results') String results,
  );
}
