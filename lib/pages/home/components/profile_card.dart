import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});
  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return authController.obx(
      (user) => Row(
        children: [
          CircleAvatar(
            radius: defaultPadding * 1.5,
            child: Text(
              user!.username.substring(0, 1).toUpperCase(),
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
      ),
      onError: (error) => Text(error!),
    );
  }
}