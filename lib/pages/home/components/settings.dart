import 'package:flutter/material.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/pages/home/components/setting_item.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Obx(
      () => Column(
        children: [
          if (authController.session != null)
            SettingItem(
              onTap: () async {
                await authController.signOut();
              },
              title: 'logout'.tr,
              icon: Icons.logout,
            ),
        ],
      ),
    );
  }
}
