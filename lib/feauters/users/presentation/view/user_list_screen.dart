import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user_test_app/core/core.dart';
import 'package:random_user_test_app/feauters/users/presentation/bloc/user_bloc.dart';
import 'package:random_user_test_app/router/router.dart';
import 'package:random_user_test_app/ui/widgets/widgets.dart';

import '../../data/models/models.dart';

@RoutePage()
class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _updateUsers();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          Titles.users,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: HexColors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<UsersBloc, UserState>(builder: (context, state) {
          if (state is UserLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is UserLoadedState) {
            return Scrollbar(
              child: ListView.builder(
                  controller: state.users.isEmpty ? null : _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];

                    return UserTile(
                      key: ValueKey(user.cell),
                      user: user,
                      onTap: () => _showUserPage(user: user),
                    );
                  }),
            );
          }

          return Container();
        }),
      ),
    );
  }

  // MARK: FUNCTION'S

  void _updateUsers() => BlocProvider.of<UsersBloc>(context)
      .add(const FetchUsersEvent(isUpdating: true));

  void _showUserPage({required User user}) =>
      context.router.push(UserRouteRoute(user: user));
}
