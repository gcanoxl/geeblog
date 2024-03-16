import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/pages/home/components/header_item.dart';
import 'package:geeblog/pages/home/components/profile_card.dart';
import 'package:get/get.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 24,
          ),
        ],
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      height: defaultPadding * 3,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 840),
          child: Row(
            children: [
              HeaderItem(
                isSelected: true,
                title: 'home'.tr,
              ),
              HeaderItem(title: 'search'.tr),
              HeaderItem(title: 'profile'.tr),
              const Spacer(),
              Obx(
                () => authController.profile == null
                    ? ElevatedButton(
                        onPressed: () {
                          Get.toNamed('/login');
                        },
                        child: Text('login'.tr))
                    : Row(
                        children: [
                          ProfileCard(profileId: authController.profile!.id),
                          const SizedBox(width: defaultPadding),
                          if (authController.profile != null &&
                              authController.profile!.is_admin)
                            TextButton(
                              onPressed: () => Get.offAllNamed('/edit'),
                              child: Text('publish'.tr),
                            ),
                          TextButton(
                            onPressed: () async {
                              await authController.signOut();
                            },
                            child: Text('logout'.tr),
                          )
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
