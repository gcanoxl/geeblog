import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/models/index.dart';
import 'package:geeblog/themes.dart';
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
    return Obx(() => authController.profile == null
        ? const CircularProgressIndicator()
        : _buildProfileCard(authController.profile!));
  }

  Widget _buildProfileCard(User user) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: defaultPadding * 0.6,
          backgroundColor: dividerColor,
          foregroundColor: boldTextColor,
          child: Text(
            user.username.substring(0, 1).toUpperCase(),
            style: const TextStyle(
              fontSize: defaultPadding * 0.6,
            ),
          ),
        ),
        const SizedBox(width: defaultPadding * 0.4),
        Text(
          user.username,
          style: const TextStyle(
              fontSize: defaultPadding * 0.6, color: boldTextColor),
        )
      ],
    );
  }
}
