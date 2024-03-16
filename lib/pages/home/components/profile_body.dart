import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/pages/home/components/login_card.dart';
import 'package:geeblog/pages/home/components/profile_card.dart';
import 'package:geeblog/pages/home/components/settings.dart';
import 'package:get/get.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});
  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
        horizontal: defaultPadding,
      ),
      child: Obx(() => Column(
            children: [
              authController.session.value == null
                  ? const LoginCard()
                  : ProfileCard(
                      profileId: authController.session.value!.user.id),
              SizedBox(height: defaultPadding * 2),
              const Settings(),
            ],
          )),
    );
    // return Text(c.user.toString());
  }
}
