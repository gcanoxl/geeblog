import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/models/index.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.profileId,
  });
  final String profileId;
  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return FutureBuilder<User>(
      future: authController.getUserById(profileId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return _buildProfileCard(snapshot.data!);
      },
    );
  }

  Widget _buildProfileCard(User user) {
    return Row(
      children: [
        CircleAvatar(
          radius: defaultPadding * 1.5,
          child: Text(
            user.username.substring(0, 1).toUpperCase(),
            style: const TextStyle(
              fontSize: defaultPadding,
            ),
          ),
        ),
        const SizedBox(width: defaultPadding),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.username,
              style: const TextStyle(
                fontSize: defaultPadding,
              ),
            ),
          ],
        )
      ],
    );
  }
}
