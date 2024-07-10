part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserLoadingState extends UserState {
  const UserLoadingState();
}

final class UserLoadedState extends UserState {
  const UserLoadedState({
    required this.users,
    required this.isUpdate,
  });

  final List<User> users;
  final bool isUpdate;

  @override
  List<Object> get props => [
        users,
        isUpdate,
      ];
}

final class UserFailureState extends UserState {
  const UserFailureState({required this.error});

  final String error;

  @override
  List<Object> get props => [error];
}
