import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:random_user_test_app/api/api.dart';
import 'package:random_user_test_app/feauters/users/data/repository/user_repository_impl.dart';
import 'package:random_user_test_app/feauters/users/domain/repository/user_repository_interface.dart';
import 'package:random_user_test_app/feauters/users/domain/usercase/get_users.dart';
import 'package:random_user_test_app/feauters/users/presentation/bloc/user_bloc.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio();
  dio.interceptors.add(
    TalkerDioLogger(
      settings: TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printRequestData: false,
        printResponseHeaders: false,
        printResponseMessage: true,
        printResponseData: true,
        requestPen: AnsiPen()..blue(),
        responsePen: AnsiPen()..green(),
        errorPen: AnsiPen()..red(),
      ),
    ),
  );

  final apiClient = ApiClient(dio);

  // repository
  sl.registerLazySingleton<UserRepositoryInterface>(
      () => UserRepositoryImpl(apiClient: apiClient));

  // bloc
  sl.registerFactory(
      () => UsersBloc(getUsers: GetUsers(sl<UserRepositoryInterface>())));
}
