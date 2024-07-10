part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();
}

final class FetchUsersEvent extends UserEvent {
  const FetchUsersEvent({required this.isUpdating});

  final bool isUpdating;

  @override
  List<Object> get props => [isUpdating];
}
