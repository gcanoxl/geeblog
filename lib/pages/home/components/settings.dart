import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/pages/home/components/setting_item.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final session = supabase.auth.currentSession;
    return Column(
      children: [
        if (session != null)
          SettingItem(
            onTap: () async {
              await supabase.auth.signOut();
              Get.offAllNamed('/home');
            },
            title: 'logout'.tr,
            icon: Icons.logout,
          ),
      ],
    );
  }
}
