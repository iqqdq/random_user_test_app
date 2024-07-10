import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:random_user_test_app/core/pagination.dart';
import '../../data/models/models.dart';
import '../../domain/usercase/get_users.dart';

part 'user_event.dart';
part 'user_state.dart';

class UsersBloc extends Bloc<UserEvent, UserState> {
  final GetUsers getUsers;
  final List<User> users = [];
  final Pagination pagination = Pagination(page: 1, results: 20);

  UsersBloc({required this.getUsers}) : super(const UserLoadingState()) {
    on<FetchUsersEvent>(_onFetchUsers);
  }

  Future<void> _onFetchUsers(
    FetchUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    if (pagination.page == 1) {
      emit(const UserLoadingState());
    } else {
      emit(UserLoadedState(
        users: users,
        isUpdate: true,
      ));
    }

    final result = await getUsers.call(
      page: pagination.page.toString(),
      results: pagination.results.toString(),
    );

    result.fold(
      (l) => emit(UserFailureState(error: l.error)),
      (r) {
        if (r.isNotEmpty) {
          pagination.page++;
          users.addAll(r);
        }

        emit(UserLoadedState(
          users: users,
          isUpdate: false,
        ));
      },
    );
  }
}
