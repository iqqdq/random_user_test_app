import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:random_user_test_app/core/core.dart';
import 'package:random_user_test_app/feauters/users/data/models/models.dart';

import '../../../../ui/ui.dart';

@RoutePage()
class UserPageScreen extends StatefulWidget {
  final User user;

  const UserPageScreen({
    super.key,
    required this.user,
  });

  @override
  State<UserPageScreen> createState() => _UserPageScreenState();
}

class _UserPageScreenState extends State<UserPageScreen> {
  @override
  Widget build(BuildContext context) {
    const spacer = SizedBox(height: 16.0);

    return Scaffold(
      backgroundColor: HexColors.white,
      appBar: AppBar(
        title: Text(
          Titles.profile,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: HexColors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0,
          ),
          children: [
            /// AVATAR

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              UserAvatar(
                url: widget.user.picture.large,
                radius: 140.0,
              ),
            ]),
            const SizedBox(height: 24.0),

            /// INFO
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// NAME
                  Text(
                    '${widget.user.name.first} ${widget.user.name.last}',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              spacer,
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  Titles.gender,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: HexColors.black.withOpacity(0.5),
                      ),
                ),

                /// GENDER
                Text(
                  widget.user.gender.name,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                spacer,
                Text(
                  Titles.address,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: HexColors.black.withOpacity(0.5),
                      ),
                ),

                /// ADDRESS

                Text(
                  '${widget.user.location.country}, ${widget.user.location.street.name}, ${widget.user.location.street.number.toString()}',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.labelMedium,
                  overflow: TextOverflow.ellipsis,
                ),

                spacer,
                Text(
                  Titles.email,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: HexColors.black.withOpacity(0.5),
                      ),
                ),

                /// EMAIL
                Text(
                  widget.user.email,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: HexColors.blue),
                  overflow: TextOverflow.ellipsis,
                ),

                spacer,
                Text(
                  Titles.phone,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: HexColors.black.withOpacity(0.5),
                      ),
                ),

                /// PHONE
                Text(
                  widget.user.phone,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: HexColors.blue),
                  overflow: TextOverflow.ellipsis,
                ),
              ])
            ]),
          ]),
    );
  }
}
