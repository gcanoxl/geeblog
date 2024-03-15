import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/pages/login/login_screen.dart';
import 'package:get/get.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(LoginScreen.routeName);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
        ),
        child: Row(
          children: [
            const Icon(Icons.person, size: 50),
            const SizedBox(width: defaultPadding),
            Text(
              'login'.tr,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
