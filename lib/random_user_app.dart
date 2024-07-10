import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feauters/users/domain/repository/user_repository_interface.dart';
import 'feauters/users/presentation/bloc/user_bloc.dart';
import 'injection_container.dart';
import 'router/router.dart';
import 'ui/ui.dart';

class RandomUserApp extends StatefulWidget {
  const RandomUserApp({super.key});

  @override
  State<RandomUserApp> createState() => _RandomUserAppState();
}

class _RandomUserAppState extends State<RandomUserApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepositoryInterface>(
            create: (context) => sl<UserRepositoryInterface>()),
      ],
      child: BlocProvider(
        create: (context) =>
            sl<UsersBloc>()..add(const FetchUsersEvent(isUpdating: false)),
        child: MaterialApp.router(
          theme: themeData,
          routerConfig: appRouter.config(),
        ),
      ),
    );
  }
}
