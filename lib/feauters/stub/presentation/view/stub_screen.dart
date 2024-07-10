import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:random_user_test_app/core/core.dart';

@RoutePage()
class StubScreen extends StatelessWidget {
  const StubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          Titles.stub,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: HexColors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: Center(
        child: Text(
          Titles.stub,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
