import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/pages/home/components/login_card.dart';
import 'package:get/get.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});
  @override
  Widget build(BuildContext context) {
    final session = supabase.auth.currentSession;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
        horizontal: defaultPadding,
      ),
      child: Column(
        children: [
          if (session != null) const ProfileCard(),
          if (session == null) const LoginCard()
        ],
      ),
    );
  }
}

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
                '${'username'.tr}: ${user.username}',
                style: const TextStyle(
                  fontSize: defaultPadding,
                ),
              ),
              Text(
                'ID: ${user.id}',
                style: const TextStyle(
                  fontSize: defaultPadding / 2,
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
