import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:random_user_test_app/core/hex_colors.dart';

class UserAvatar extends StatelessWidget {
  final String url;
  final double radius;

  const UserAvatar({
    super.key,
    required this.url,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius / 2.0),
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
            color: HexColors.black.withOpacity(0.1),
            border: Border.all(
              width: 1.0,
              color: HexColors.black.withOpacity(0.1),
            )),
        child: CachedNetworkImage(
          imageUrl: url,
          height: radius,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
