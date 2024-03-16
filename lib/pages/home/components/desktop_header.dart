import 'package:flutter/material.dart';
import 'package:geeblog/components/light_small_button.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/pages/home/components/header_item.dart';
import 'package:geeblog/pages/home/components/profile_card.dart';
import 'package:geeblog/themes.dart';
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
        border: const Border(bottom: BorderSide(color: dividerColor)),
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
                    ? LightSmallButton(
                        onPressed: () => Get.toNamed('/login'),
                        title: 'login'.tr,
                      )
                    : Row(
                        children: [
                          ProfileCard(profileId: authController.profile!.id),
                          const SizedBox(width: defaultPadding),
                          if (authController.profile != null &&
                              authController.profile!.is_admin)
                            LightSmallButton(
                              onPressed: () => Get.offAllNamed('/edit'),
                              title: 'publish'.tr,
                            ),
                          const SizedBox(width: defaultPadding * 0.4),
                          LightSmallButton(
                            onPressed: () async =>
                                await authController.signOut(),
                            title: 'logout'.tr,
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
