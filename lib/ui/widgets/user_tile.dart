import 'dart:io';

import 'package:flutter/material.dart';
import 'package:random_user_test_app/core/core.dart';
import 'package:random_user_test_app/feauters/users/data/models/models.dart';
import 'package:random_user_test_app/ui/ui.dart';

class UserTile extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const UserTile({
    super.key,
    required this.user,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const spacer = SizedBox(height: 10.0);

    return Container(
      margin: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
      ),
      decoration: BoxDecoration(
        color: HexColors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(1.0, 6.0),
            color: HexColors.black.withOpacity(0.1),
            blurRadius: 10.0,
          )
        ],
        border: Border.all(
          width: 1.0,
          color: HexColors.black.withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.0),
          highlightColor:
              Platform.isAndroid ? null : HexColors.black.withOpacity(0.1),
          splashColor:
              Platform.isAndroid ? HexColors.black.withOpacity(0.1) : null,
          onTap: () => onTap(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              /// AVATAR

              UserAvatar(
                url: user.picture.large,
                radius: 60.0,
              ),
              const SizedBox(width: 12.0),

              /// INFO
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Titles.name,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      /// NAME
                      Text(
                        '${user.name.first} ${user.name.last}',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                      spacer,

                      /// GENDER
                      Text(
                        Titles.gender,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      Text(
                        user.gender.name,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      spacer,
                      Text(
                        Titles.address,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      /// ADDRESS

                      Text(
                        '${user.location.country}, ${user.location.street.name}, ${user.location.street.number.toString()}',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelLarge,
                        overflow: TextOverflow.ellipsis,
                      ),

                      spacer,
                      Text(
                        Titles.email,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      /// EMAIL
                      Text(
                        user.email,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: HexColors.blue),
                        overflow: TextOverflow.ellipsis,
                      ),

                      spacer,
                      Text(
                        Titles.phone,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      /// PHONE
                      Text(
                        user.phone,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: HexColors.blue),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
